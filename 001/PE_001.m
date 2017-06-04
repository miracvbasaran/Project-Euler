% Author: Mirac Vuslat Basaran
function sum = PE_001

sum = 0;
for i = 1:999
    if mod(i,3) == 0 || mod(i,5) == 0
        sum = sum + i;
    end
end

end