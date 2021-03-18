function M = modulo(s)
     d = 1;
   while(d < 100 && mod(s*d,29) ~= 1)
        d = d+1;
   end
       M = d;

end

