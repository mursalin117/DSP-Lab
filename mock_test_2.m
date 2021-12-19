% Analog signal
a = 2;
f = 1000;
t = 0:0.00001:0.02;
y = a * sin(2 * pi * f * t);
hold on
subplot(4, 2, 1);
plot(t, y);
xlabel("---> t");
ylabel("Amplitude");
title("Analog Signal");

% Discrete signal
N = 500;
n = 0:N-1;
fs = 20 * f;
y = a * sin(2 * pi * (f/fs) * n);
subplot(4, 2, 2);
stem(n, y);
xlabel("---> n");
ylabel("Amplitude");
title("Discrete Signal");

% Hamming window
N_temp = 100;
n_temp = 0:N_temp-1;
hw = 0.54 - 0.46 * cos((2 * pi * n_temp)/(N_temp-1));
hw_padding = [zeros(1, 200), hw, zeros(1, 200)];
subplot(4, 2, 3);
plot(n, hw_padding);
xlabel("---> n");
ylabel("Amplitude");
title("Hamming Window");

% Multiply by Hamming
yhw = hw_padding .* y;
subplot(4, 2, 4);
plot(n, yhw);
xlabel("---> n");
ylabel("Amplitude");
title("Multiply by Hamming");

% Rectangular Window
rw = [zeros(1, 200), ones(1, 100), zeros(1, 200)];
subplot(4, 2, 5);
plot(n, rw);
xlabel("---> n");
ylabel("Amplitude");
title("Rectangular Window");

% Multiply by Rectangle
yrw = rw .* y;
subplot(4, 2, 6);
plot(yrw);
xlabel("---> n");
ylabel("Amplitude");
title("Multiply by Rectangle");

% Triangular window
N_temp = 100;
n_temp = 0:N_temp-1;
tw = 1 - (abs(2 * n_temp - N_temp + 1)/(N_temp - 1));
tw_padding = [zeros(1, 200), tw, zeros(1, 200)];
subplot(4, 2, 7);
plot(n, tw_padding);
xlabel("---> n");
ylabel("Amplitude");
title("Triangular window");

% Multiply by Triangle
ytw = tw_padding .* y;
subplot(4, 2, 8);
plot(n, ytw);
xlabel("---> n");
ylabel("Amplitude");
title("Multiply by Triangle");