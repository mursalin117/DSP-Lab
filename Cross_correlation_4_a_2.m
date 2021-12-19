% Cross-correlation iteration

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

% Iteration
h = fliplr(h);
n1 = length(x);
n2 = length(h);

X = [x, zeros(1, n2)];
Y = [h, zeros(1, n1)];

for i=1:n1+n2-1
  y(i)=0;
  for j=1:n1
    if(i-j+1>0)
      y(i)= y(i) + X(j)*Y(i-j+1);
    else
     end
  endfor
endfor

subplot(3, 1, 3);
stem(y);
xlabel('R_a_b');
ylabel('value');
title('Cross-Correlation');