% Assign Time vector t from 0 to 100 with increment 100/(10-1)

% write the given Signal x = ....

t = 0:1/100:10-1/100;

x = sin(2*pi*15*t) + sin(2*pi*40*t);    % Example signal

%subplot function
subplot(3,1,1);

plot(t,x);

grid;

title('Given Original Signal')

xlabel('Time, s')

%Compute the DFT of the signal and the magnitude and phase of the transformed sequence.
n = 512;
y = fft(x,n);                     % Compute DFT of x
m = abs(y);                     % Magnitude of y


%Decrease round-off error when computing the phase by setting small-magnitude transform values to zero [y(m<1e-6) = 0].


% Compute DFT of x with single parameter of fft function and assign as y

 % Magnitude of y is m

y(m<1e-6) = 0;



%To plot the magnitude and phase in degrees, type the following commands:
lengthYes = length(y);  % Length of the DFT result
p = unwrap(angle(y));    % Phase of the DFT

f = (0:lengthYes-1)*100/lengthYes;        % Frequency vector

%subplot function
subplot(3,1,2);
plot(f,m);
xlabel('Frequency, Hz');
ylabel('Magnitude');
grid on;

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