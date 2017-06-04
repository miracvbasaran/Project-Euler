% Author = Mirac Vuslat Basaran

function sum = PE_002
limit = 4000000; % limit is four million
sum = 0;

a = 1;
b = 1;

% finding the fibonacci numbers
while b < limit
    if mod(b,2) == 0
        sum = sum + b;
    end
    temp = b;
    b = a + b;
    a = temp;
end

end
