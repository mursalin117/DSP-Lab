% given = 5sin(2*pi*1000*t+d)
subplot(2, 1, 1);
f = 10;
t = 0:1/(f*100):1;
d = 0;
y = 5 * sin(2*pi*f*t + d);
plot(t, y);
xlabel('---> t');
ylabel('Amplitude');
title('Analog form');

% discrete form
subplot(2, 1, 2);
%fs = input('Enter the sampling frequency: ');
N = 100;
n = 0:N-1;
a = 5;
fs = 20 * f;
y2 = a * sin(2*pi*(f/fs)*n);
stem(n, y2);
xlabel('---> n');
ylabel('Amplitude');
title('Discrete form')