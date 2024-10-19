% Author Name: [Chase Courson]
% Email: [courso95@students.rowan.edu]
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: [Part 1]
% Date: [10/18/2024]

% 1a: Made vector for population
population = [5000, 5200, 5350, 5600, 5800];

% 1b: Computed growth rate year after year
growth_rate = (population(2:end) - population(1:end-1)) ./ population(1:end-1);

% 1c: Made a matrix with population and growth rate
pop_data = [population; [0, growth_rate]];

% 1d: Printed a table with fprint
fprintf('Year\tPopulation\tGrowth Rate (%%)\n');
for i = 1:length(population)
    fprintf('%d\t%d\t\t%.2f\n', i, pop_data(1, i), pop_data(2, i) * 100);
end
