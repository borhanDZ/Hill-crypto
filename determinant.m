function D = determinant( m )

if(size(m) == 1)
    D = m;
else
 if(size(m,1) == size(m,2) == 2)
     D = m(1,1)*m(2,2)-m(1,2)*m(2,1);
 else
     D = 0;
     for i = 1 : size(m,1)
       for j = 1 :size(m,2)
         if(i == 1)
            D = D + m(i,j)*determinant(cofacteur(i,j,m))*puissance(-1,i,j);
         end
       end
     end
 end

end

