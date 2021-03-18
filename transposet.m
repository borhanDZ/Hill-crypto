function tra = transposet(mat)

   for c=1 : size(mat,2)
     for l=1 : size(mat,1)
         tra(c,l)= mat(l,c);
     end
   end

end

