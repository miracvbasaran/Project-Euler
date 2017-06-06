function palindrome = PE_004
limit = 1000; % limit is 3 digits
t = cputime;

nums = zeros(900, 900);
for i = limit - 1 : -1 :  100
    for j = limit - 1 : -1 : 100
        nums(i - 99,j - 99) = i * j;
    end
end

nums_s = reshape(nums,1,900*900);
nums_s = sort(nums_s);
for i = 900 * 900: - 1: 1
    num = nums_s(1, i);
    str = int2str(num);
    len = strlength(str);
    if mod(len,2) == 0
        len_1 = len / 2 + 1;
        len_2 = len / 2;
    else
        len_1 = (len + 1) / 2;
        len_2 = len_1;
    end
    half_1 = extractBefore(str, len_1);
    half_2 = extractAfter(str, len_2);
    if strcmp(half_1,reverse(half_2))
        palindrome = num;
        break;
    end
end
time_elapsed = cputime - t
end