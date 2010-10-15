/*
 * Copyright 2010 Camilo Polymeris
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 3 as
 * published by the Free Software Foundation.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QtGui/QMainWindow>
#include <QTimer>
#include <QButtonGroup>
#include <QMap>


class SoundCard;

namespace Ui
{
    // Actual class definition generated automagically by qmake
    class MainWindow;
}

/** Program main window.
    Contains a hiddeable upper portion with general sound card controls.
    Below the matrix per se, and to the right a vertical bar with most
    frequently used buttons, and faders.
    Building the ui is handled by the ui element, defined in a file
    generated by qmake from mainwindow.ui
    */
class MainWindow : public QMainWindow
{
    /// This macro provides for Qt meta object handling and permits defining slots and signals
    Q_OBJECT

public:
    /** Overloaded default constructor.
        Setup happens here.
        Cards get loaded, timer started, functions to set defaults, etc.
        */
    MainWindow(QWidget *parent = 0);
    /** Destructor.
        Clean up here.
        */
    ~MainWindow();

    /** Contains actual UI widgets.
        It is no neccesary to interacte directly with this.
        */
    Ui::MainWindow * ui;

private:
    /** Soundcard object.
      Wrapper around ALSA functions. Takes care of card initialization, reading and writing.
      Callbacks modify this window's widgets.
      */
    SoundCard * card;

    ///// GUI METHODS
    /** Displays error message popup.
        @param msg Message to display.
    */
    void showError(const QString & msg);
    /// Show or hide button groups (matrix columns & rows)
    void matrixSetVisible(const int rows[], const int cols[], bool visible);
    /** Check linked l/r button
      @param bg The group in which a button was clicked
      @param linked Linked QButtonGroup
      */
    void checkLinked(QButtonGroup * bg, QButtonGroup * linked, QButtonGroup * linkedr = NULL);

    /** Timer event
        Timer event for this class. Set to timeout when GUI stuff is idle. Updates
        ALSA status and polls any pending events, calling callbacks.
        Argument ignored.
        */
    void timerEvent(QTimerEvent *);

private slots:
    /// Set visible connectors and matrix boxes
    void on_con0202_toggled(bool checked);
    void on_con1010_toggled(bool checked);
    void on_condock_toggled(bool checked);

    /// Signaled by pad togglebuttons
    void on_dacpad_toggled(bool checked);
    void on_d1pad_toggled(bool checked);
    void on_d2pad_toggled(bool checked);
    void on_d3pad_toggled(bool checked);
    void on_d4pad_toggled(bool checked);
    void on_adcpadin_toggled(bool checked);
    void on_d1padin_toggled(bool checked);
    void on_d2padin_toggled(bool checked);
    void on_d3padin_toggled(bool checked);
    /// Signals from various widgets:
    /// Clock rate ComboBox
    void on_rate_currentIndexChanged(int index);
    /// Master fader
    void on_master_valueChanged(int value);
    /// Card switcher ComboBox
    void on_card_currentIndexChanged(int index);
    /// Panic button
    void on_panic_pressed();

    /// These are signaled by clicks on the matrix, each for one column (output)
    ///  b11 - b16: Alsa capture channels
    void on_b11_buttonClicked(int);
    void on_b12_buttonClicked(int);
    void on_b13_buttonClicked(int);
    void on_b14_buttonClicked(int);
    void on_b15_buttonClicked(int);
    void on_b16_buttonClicked(int);
    /// b0l, b0r: 0202 left & right DACs
    void on_b0l_buttonClicked(int);
    void on_b0r_buttonClicked(int);
    /// ba0 - ba7: 1010 ADAT ouput channels
    void on_ba0_buttonClicked(int);
    void on_ba1_buttonClicked(int);
    void on_ba2_buttonClicked(int);
    void on_ba3_buttonClicked(int);
    void on_ba4_buttonClicked(int);
    void on_ba5_buttonClicked(int);
    void on_ba6_buttonClicked(int);
    void on_ba7_buttonClicked(int);
    /// bsl, bsr: 1010 S/PDIF left & right
    void on_bsl_buttonClicked(int);
    void on_bsr_buttonClicked(int);
    /// b1l, b1r - b4l, b4r: Dock DACs 1-4, left & right
    void on_b1l_buttonClicked(int);
    void on_b1r_buttonClicked(int);
    void on_b2l_buttonClicked(int);
    void on_b2r_buttonClicked(int);
    void on_b3l_buttonClicked(int);
    void on_b3r_buttonClicked(int);
    void on_b4l_buttonClicked(int);
    void on_b4r_buttonClicked(int);
    /// bpl, bpr: Dock phones DAC, left & right
    void on_bpl_buttonClicked(int);
    void on_bpr_buttonClicked(int);
    /// bdsl, bsdr: Dock S/PDIF outputs, left & right
    void on_bdsl_buttonClicked(int);
    void on_bdsr_buttonClicked(int);
};

#endif // MAINWINDOW_H
