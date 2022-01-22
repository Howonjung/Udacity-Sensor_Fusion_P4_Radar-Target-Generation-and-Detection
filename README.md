# Udacity-Radar Target Generation and Detection

### Project Goal

- Configure the FMCW waveform based on the system requirements.
- Define the range and velocity of target and simulate its displacement.
- For the same simulation loop process the transmit and receive signal to determine the beat signal
- Perform Range FFT on the received signal to determine the Range
- Towards the end, perform the CFAR processing on the output of 2nd FFT to display the target.

### Overview
- This project defines a signal of surrounding obstacle with certain velocity and position with Radar specifications. It then propagates the Radar wave signal based on the Frequency Modulated Continuous Wave(FMCW) model. Range and Doppler 2D FFT is applied to the received signal to determine the range and velocity of the obstacle. At the end, 2D Constant False Alarm Rate (2D-CFAR) detector is applied on the 2D FFT result, to remove false detection and find true obstacle position and velocity. 
<img src="https://user-images.githubusercontent.com/33755943/150632608-bb666db5-476f-46e1-b0d8-fd51f84d6045.png" width="730" height="365">

