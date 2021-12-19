% Analog siganl
a = 2;
f = 1000;
t = 0:0.00001:0.04;
y = a * sin ( 2 * pi * f * t);
hold on
subplot(4, 2, 1);
plot(t, y);
xlabel("---->t");
ylabel("Amplitude");
title("Analog Signal");

% discrete signal
N = 500;
n = 0:N-1;
fs = 20 * f;
y = a * sin ( 2 * pi * (f/fs) * n)
subplot(4, 2, 2);
plot(n, y);
xlabel("--->n");
ylabel("Amplitude");
title("Discrete Signal");

% hamming window
hw = 0.54 - 0.46 * cos ((2 * pi * n) / (N-1));
subplot(4, 2, 3);
plot(n, hw);
xlabel("--->n");
ylabel("Amplitude");
title("Hamming window");

% multiply by hamming
y2 = hw .* y;
subplot(4, 2, 4);
plot(n, y2);
xlabel("--->n");
ylabel("Amplitude");
title("Multiply by Hamming");


% rectangular window
rw = ones(1, N);
subplot(4, 2, 5);
plot(n, rw);
xlabel("--->n");
ylabel("Amplitude");
title("Rectangular window");

% multiply by rectangular window
y3 = y .* rw;
subplot(4, 2, 6);
plot(n, y3);
xlabel("--->n");
ylabel("Amplitude");
title("Multiple by Rectangle");

% triangular window
tw  = 1 - (abs(2*n - N + 1)/(N-1));  
subplot(4, 2, 7);
plot(n, tw);
xlabel("--->n");
ylabel("Amplitude");
title("Triangular window");

% multiply with triangular window
y4 = y .* tw;
subplot(4, 2, 8);
plot(n, y4);
xlabel("--->n");
ylabel("Amplitude");
title("Multiple by triangle");