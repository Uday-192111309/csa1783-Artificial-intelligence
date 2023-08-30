% Base case: Sum of 0 numbers is 0.
sum(0, 0).

% Recursive rule: Sum of N numbers is N + sum of (N-1) numbers.
sum(N, Result) :-
    N > 0,              % Ensure N is positive.
    PrevN is N - 1,     % Calculate (N-1).
    sum(PrevN, PrevSum), % Calculate sum of (N-1) numbers.
    Result is N + PrevSum. % Calculate sum of N numbers.
