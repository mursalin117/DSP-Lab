% Cross-correlation function

%x = input('Enter first signal: ');
x = [1 2 3 4];
%h = input('Eneter second signal: ');
h = [1 2 1 2];

subplot(3, 1, 1);
stem(x);
xlabel('a');
ylabel('value');
title("First Input");

subplot(3, 1, 2);
stem(h);
xlabel('b');
ylabel('value');
title("Second Input");

r = xcorr(x, h);
subplot(3, 1, 3);
stem(r);
xlabel('R');
ylabel('value');
title("Cross-correlation");
