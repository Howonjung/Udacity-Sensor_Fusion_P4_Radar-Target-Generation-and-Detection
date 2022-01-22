
% Doppler Velocity Calculation
c = 3*10^8;         %speed of light
frequency = 77e9;   %frequency in Hz

% TODO: Calculate the wavelength
wavelength = c /frequency;

% TODO: Define the doppler shifts in Hz using the information from above 
dopplerFreqShifts= [3e3, -4.5e3, 11e3, -3e3];  % doppler frequency shifts: [3 KHz, -4.5 KHz, 11 KHz, -3 KHz]

% TODO: Calculate the velocity of the targets  fd = 2*vr/lambda
vr = dopplerFreqShifts*wavelength / 2.0;

% TODO: Display results
disp(vr);
