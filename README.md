# ECG File Viewer

A Delphi VCL app that loads ECG data from a text file, plots it, and overlays a sinusoidal baseline signal you configure. The overlay shows how baseline wander changes an ECG recording.

## Features
- Opens a `.txt` file with two columns per line: `time ecg_value`
- Lists the raw ECG values in a list box
- Plots the signal on a TeeChart at a sampling rate of 100 Hz
- Adds a sinusoidal baseline signal, using an amplitude **A** and frequency **f** you enter:

  ```
  y(t) = ecg(t) + A · sin(2π · f · t),   t = n / fs
  ```

## Usage
1. Click **Cari Data** and choose an ECG text file
2. Enter the **Amplitudo** (amplitude) and **Frekuensi** (frequency)
3. Click **Baseline** to plot the ECG with the added baseline

## Build
Open `Project1.dproj` in Delphi (RAD Studio, Community Edition works) and run it. It needs the VCL and the TeeChart components that ship with Delphi.

## Files
- `Cekdataecg.pas` / `.dfm`: main form and logic
- `Project1.dpr`: project entry point
