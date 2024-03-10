
% Define the range for n
n = -10:10;

% Create the unit impulse sequence with a pulse at n = 4
delta_4 = unit_impulse(4, n(1), n(end));

% Create the unit impulse sequence with a pulse at n = -2
delta_neg2 = unit_impulse(-2, n(1), n(end));

% Define y(n) using the given formula
y = 5 * delta_4 - 2 * delta_neg2;

% Plot y(n)
figure;
stem(n, y);
title('Plot of y(n) = 5*δ(n + 4) - 2*δ(n - 2)');
xlabel('n');
ylabel('y(n)');
