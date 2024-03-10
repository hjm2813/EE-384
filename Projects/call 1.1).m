n_p = 5; % Example position of the impulse
n1 = 0;  % Start of the sequence
n2 = 10; % End of the sequence
y = unit_impulse(n_p, n1, n2);
stem(n1:n2, y);

function y = unit_impulse(n_p, n1, n2)
    % Create an n sequence from n1 to n2
    n = n1:n2;
 
    y = zeros(1, length(n));
    y(n == n_p) = 1;
end


%% "Your own headline here"
% <include>anotherFunction.m</include>
%% "Another headline here"
% <include>bonusFunction.m</include>