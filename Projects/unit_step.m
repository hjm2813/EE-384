% unit_step.m file
function y = unit_step(n_s, n1, n2)
    % Create a sequence of n values from n1 to n2
    n = n1:n2;
    % Initialize y as a zero array of the same size as n
    y = zeros(1, length(n));
    % Set the values of y to 1 where n is greater than or equal to n_s
    y(n >= n_s) = 1;
end

