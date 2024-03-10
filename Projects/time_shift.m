% time_shift.m file
function y = time_shift(x, n, n_d)
    % Initialize y with zeros
    y = zeros(size(x));
    % Apply time shift by n_d samples
    y((n_d+1):end) = x(1:(end-n_d));
end