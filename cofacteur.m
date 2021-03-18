function Cof = cofacteur(l,c,m)
   x = 0;
for i = 1 : size(m,1)
   if(i ~= l)
     x = x+1;
     y = 0;
    for j = 1 : size(m,2)
     if(j ~= c)
      y = y+1;
      Cof(x,y) = m(i,j);
     end
    end
   end
end

end

