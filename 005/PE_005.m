function diff = PE_005
begin = cputime;
diff = 0;
for i = 1:100
    for j = 1:100
        if i ~= j
            diff = diff + i*j;
        end
    end
end

time_elapsed = cputime - begin
end