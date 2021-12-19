% Auto-correlation function

%x = input('Enter input signal: ');
x = [1 2 3 4];

subplot(2, 1, 1);
stem(x);
xlabel('a');
ylabel('value');
title("Input signal");

subplot(2, 1, 2);
%r = autocorr(x);
r = xcorr(x);
stem(r);
xlabel('R_x_x');
ylabel('value');
title("Auto Correlation");