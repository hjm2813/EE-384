z = u_n - unit_step(-4, n(1), n(end));
figure;
stem(n, z);
title('Plot of z(n) = u(n) - u(n-4)');
xlabel('n');
ylabel('z(n)');