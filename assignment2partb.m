% Author Name: [Chase Courson]
% Email: [courso95@students.rowan.edu]
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: [Part 2]
% Date: [10/18/2024]

% Wrote the def of the function
function encrypted_message = caesar_cipher(message, shift)
    ascii_values = double(message);
    for i = 1:length(ascii_values)
        if ascii_values(i) >= 97 && ascii_values(i) <= 122
            shifted_value = mod(ascii_values(i) - 97 + shift, 26) + 97;
            ascii_values(i) = shifted_value;
        end
    end
    encrypted_message = char(ascii_values);
end

% wrote a main script that can be saved as a seperate script file
message = input('Enter a message (lowercase letters only): ', 's');
shift = input('Enter a shift value (1-25): ');

encrypted_message = caesar_cipher(message, shift);

fprintf('Original message: %s\n', message);
fprintf('Encrypted message: %s\n', encrypted_message);
