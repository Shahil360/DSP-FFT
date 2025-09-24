clc;

clear all;

close all;

% Define the value of t

% Write the given expression x in terms of t
t = -1:0.001:1; % Discretize the time vector
x = sin(2 * pi * 50 * t) + sin(2 * pi * 75 * t);

subplot(2,1,1);

plot(t(1001:1200),x(1:200));

grid;

title('Sin(2\pi50t)+Sin(2\pi75t)')

xlabel('Time, s')

subplot(2,1,2);

% X would be the fft of x
X = fft(x); % Compute the FFT of x
X2 = fftshift(abs(X)); % Shift the zero frequency component to the center

% X2 would be shifted function of X

% assign f from -499.9 to 500 with increment of 1000/2001

f=-499.9:1000/2001:500;
plot(f,X2);

grid;

title('Frequency domain representation of Sin(2\pi50t)+ Sin(2\pi75t)');

xlabel('Frequency, Hz.')