%% A signal with sampling frequency of 1kHz and a signal duration of 1.5 seconds
Fs = 1000;            % Sampling frequency                    
T = 1/Fs;             % Sampling period       
L = 1500;             % Length of signal
t = (0:L-1)*T;        % Time vector

% TODO: Form a signal containing a 77 Hz sinusoid of amplitude 0.7 and a 43Hz sinusoid of amplitude 2.
A1 = 0.7;
A2 = 2;
f1 = 77; % Hz
f2 = 43; % Hz

S = A1*sin(2*pi*f1*t) + A2*sin(2*pi*f2*t);

% Corrupt the signal with noise 
X = S + 2*randn(size(t));

% Plot the noisy signal in the time domain. It is difficult to identify the frequency components by looking at the signal X(t). 
plot(1000*t(1:50) ,X(1:50))
title('Signal Corrupted with Zero-Mean Random Noise')
xlabel('t (milliseconds)')
ylabel('X(t)')

%% TODO : Compute the Fourier transform of the signal. 
%% This returns the N-point DFT. If N is not specified, signal_fft is the same size as signal.
Y = fft(X);

%% The output of FFT processing of a signal is a complex number a+jb. 
%% Since we just care about the magnitude we take the absolute value sqrt(a^2+b^2) of the complex number.
P2 = abs(Y/L);

%% FFT output generates a mirror image of the signal. 
%% But we are only interested in the positive half of signal length L 
%% since it is the replica of the negative half and has all the information we need.
P1  = P2(1:L/2+1)   

% TODO : Compute the two-sided spectrum P2. Then compute the single-sided spectrum P1 based on P2 and the even-valued signal length L.


% Plotting
f = Fs*(0:(L/2))/L;
plot(f,P1) 
title('Single-Sided Amplitude Spectrum of X(t)')
xlabel('f (Hz)')
ylabel('|P1(f)|')
