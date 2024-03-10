% 2.2) Define and plot x(n)
n = -10:10; % Range of n
x = 2*n + 3; % Define x(n)

% a. Plot x(n)
figure;
stem(n, x);
title('Plot of x(n)');
xlabel('n');
ylabel('x(n)');

% b. Plot a time delayed version of x(n) delayed by 3 samples
n_d = 3; % Time delay
x_delayed = time_shift(x, n, n_d);
figure;
stem(n, x_delayed);
title('Plot of time delayed x(n) by 3 samples');
xlabel('n');
ylabel('x(n)');

% c. Plot the time-reversal of x(n)
x_reversed = fliplr(x); % Flip the array to get time-reversal
figure;
stem(n, x_reversed);
title('Time-reversal of x(n)');
xlabel('n');
ylabel('x(n)');

% 2.3) Define and plot y(n)
delta_n = unit_impulse(4, n(1), n(end));
u_n = unit_step(0, n(1), n(end));
y = 5 * delta_n - 2 * unit_impulse(-2, n(1), n(end));
figure;
stem(n, y);
title('Plot of y(n)');
xlabel('n');
ylabel('y(n)');

% 2.4) Define and plot z(n)
z = u_n - unit_step(-4, n(1), n(end));
figure;
stem(n, z);
title('Plot of z(n) = u(n) - u(n-4)');
xlabel('n');
ylabel('z(n)');
