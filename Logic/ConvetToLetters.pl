% string_to_list(L,R)
converToLetters(N,R):- N < 100, caseNum(N,R).
caseNum(0,cero).
caseNum(1,uno).
caseNum(2,dos).
caseNum(3,tres).
caseNum(4,cuatro).
caseNum(5,cinco).
caseNum(6,seis).
caseNum(7,siete).
caseNum(8,ocho).
caseNum(9,nueve).
caseNum(10,diez).
caseNum(11,once).
caseNum(12,doce).
caseNum(13,trece).
caseNum(14,catorce).
caseNum(15,quince).
caseNum(N,R):- N < 20, Np is N-10, caseNum(Np,Rp), atomic_concat(dieci,Rp,R), !.%operador de corte.
caseNum(20,veinte).
caseNum(N,R):- N < 30, Np is N-20, caseNum(Np,Rp), atomic_concat(veinti,Rp,R), !.
caseNum(30,treinta).
caseNum(40,cuarenta).
caseNum(50,cincuenta).
caseNum(60,sesenta).
caseNum(70,setenta).
caseNum(80,ochonta).
caseNum(90,noventa).
caseNum(N,R):- N < 100, Np is (N//10)*10, caseNum(Np,Rp), Ns is N mod 10, caseNum(Ns,M), atomic_concat(Rp,M,R), !.
caseNum(100,cien).
caseNum(N,R):- N < 200, Np is N-100, caseNum(Np,Rp), atomic_concat(ciento_,Rp,R), !.

sum(0,0,0).
sum(N1,N2,R):-R is N1+N2.
