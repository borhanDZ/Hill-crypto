function p = possitif(m)

for i = 1:length(m)
  for j = 1:length(m)
    while(m(i,j) <= 0)
       m(i,j) = m(i,j) + 29; 
    end
  end
end
p = m;

end

