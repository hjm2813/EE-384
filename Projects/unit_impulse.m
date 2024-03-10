function y = unit_impulse(n_p, n1, n2)
    % Create an n sequence from n1 to n2
    n = n1:n2;
 
    y = zeros(1, length(n));
    y(n == n_p) = 1;
end
