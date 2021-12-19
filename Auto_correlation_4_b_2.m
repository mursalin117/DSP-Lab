% Auto-correlation iteration

%x = input('Enter input signal: ');
x = [1 2 3 4];

subplot(2, 1, 1);
stem(x);
xlabel('a');
ylabel('value');
title("Input signal");

% Iteration
h = fliplr(x);
n = length(x);

X = [x, zeros(1, n)];
Y = [h, zeros(1, n)];

for i=1:n1+n2-1
  y(i)=0;
  for j=1:n1
    if(i-j+1>0)
      y(i)= y(i) + X(j)*Y(i-j+1);
    else
     end
  endfor
endfor

subplot(2, 1, 2);
stem(r);
xlabel('R_x_x');
ylabel('value');
title("Auto-correlation");
