clc;

clear all;

close all;

% Assign Time vector t from 0 to 100 with increment 100/(10-1)

t = 0:1/100:10-1/100;

% write the given Signal x = ....
x = sin(2 * pi * 15 * t) + sin(2 * pi * 45 * t);

%subplot function
subplot(3,1,1);
plot(t,x);

grid;

title('Given Original Signal')

xlabel('Time, s')

%Compute the DFT of the signal and the magnitude and phase of the transformed sequence.
         % Length of the signal
y = fft(x);                     % Compute DFT of x
m = abs(y);                     % Magnitude of y


%Decrease round-off error when computing the phase by setting small-magnitude transform values to zero.

                     % Phase of the DFT

% Compute DFT of x with single parameter of fft function and assign as y
y = fft(x);                     % Compute DFT of x

 % Magnitude of y is m

y(m<1e-6) = 0;
lengthYes = length(y); 
p = unwrap(angle(y));
%p = unwrap(angleYes);                     % Phase

%To plot the magnitude and phase in degrees, type the following commands:


f = (0:lengthYes-1)*100/lengthYes;        % Frequency vector

%subplot function
subplot(3,1,2);
plot(f,m)

title('Magnitude')

ax = gca;

ax.XTick = [15 40 60 85];

% subplot function
subplot(3,1,3);
plot(f,p*180/pi)

title('Phase')

ax = gca;

ax.XTick = [15 40 60 85];