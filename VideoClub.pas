program videoclub;
uses wincrt;
type stoixeia=record   {an kai efoson den ginontai pra3eis pou8ena orizw ta panta ws STRING wste na einai poio xrhsima}
     onoma:string;
     eponymo:string;
     perioxh:string;
     odos:string;
     noumero:string;
     thl:string;
     code:string;
   end;
type uliko=record
     arithmos:string;
     name:string;
     eidos:string;
     paiktes:array[1..3] of string;
     noiki:string;
   end;
var pelaths:stoixeia;
    DVD:uliko;
    u:text;
    t,l,filename:string;
    sug,i,n:integer;
    logic,z:char;
    

BEGIN
 repeat                                                                   {gia na ka8arizei h o8onh mhn ginetai xamos}
  ClrScr;
  writeln('*******************************************************************************');
  writeln('       Kataxwrhsh stoixeiwn NEOY pelath --------------------- pathste 1.      ');       {epiloges menou xrhsth}
  writeln('       Kataxwrhsh stoixeiwn NEOY dvd ------------------------ pathste 2.      ');
  writeln('       Emfanhsh stoixeiwn uparxontos pelath ----------------- pathste 3.      ');
  writeln('       Emfanhsh stoixeiwn uparxontos dvd -------------------- pathste 4.      ');
  writeln('       Gia allagh stoixeiwn pelath -------------------------- pathste 5.      ');
  writeln('       Gia allagh stoixeiwn DVD ----------------------------- pathste 6       ');
  writeln('       Gia elenxo noikiasmenou/anoikiastou dvd -------------- pathste 7.      ');
  writeln('       Gia noikiash dvd ------------------------------------- pathste 8.      ');
  writeln('       Gia 3enoikiash dvd ----------------------------------- pathste 9.      ');
  write('       Epilogh: ');
  read(n);
  readln;
  writeln('*******************************************************************************');

  if n=1 then                                                                 {diabasma stoixoiwn pelath}
  begin
   writeln('       O kwdikos pelath prepei na apoteleitai apo GRAMMATA kai NOUMERA');
   write('       dwse kwdiko pelath: ');
   read(pelaths.code);
   filename:='C:\'+pelaths.code+'.txt';
   readln;

   write('       dwse onoma pelath: ');
   read(pelaths.onoma);
   readln;

   write('       dwse eponymo pelath: ');
   read(pelaths.eponymo);
   readln;

   write('       dwse perioxh pelath: ');
   read(pelaths.perioxh);
   readln;

   write('       dwse odos pelath: ');
   read(pelaths.odos);
   readln;

   write('       dwse noumero/kthrio katoikias: ');
   read(pelaths.noumero);
   readln;

   write('       dwse thlefwno pelath: ');
   read(pelaths.thl);
   readln;

   assign(u,filename);
   rewrite(u);
    writeln(u,'code: ',pelaths.code);
    writeln(u,'onoma: ',pelaths.onoma);
    writeln(u,'eponymo: ',pelaths.eponymo);
    writeln(u,'dieu8unsh: ',pelaths.perioxh,char(32),pelaths.odos,char(32),pelaths.noumero);
    writeln(u,'thlefwno: ',pelaths.thl);
   close(u);

   writeln('       ** kataxwrh8hke sto C:\',pelaths.code,'.txt **');
  end;

  if n=2 then                                                                   {diabasma stoixeiwn dvd}
  begin
   write('       dwse au3onta tainias dvd: ');
   read(dvd.arithmos);
   filename:='C:\'+dvd.arithmos+'.txt';
   readln;

   write('       dwse onoma dvd: ');
   read(dvd.name);
   readln;

   write('       dwse eidos dvd: ');
   read(dvd.eidos);
   readln;

   write('       posous basikous hthopoious exei? (mexri 3): ');
   read(sug);
   readln;
   for i:=1 to sug do
   begin
    write('       dwse onoma hthopoiou ',i,': ');
    read(dvd.paiktes[i]);
    readln;
   end;

   dvd.noiki:=char(32);

   assign(u,filename);
   rewrite(u);
    writeln(u,'au3ontas: ',dvd.arithmos);
    writeln(u,'onoma dvd: ',dvd.name);
    writeln(u,'eidos: ',dvd.eidos);
    write(u,'basikoi hthopoioi: ');
    for i:=1 to sug do
    begin
     write(u,dvd.paiktes[i],char(32));
    end;
    writeln(u,dvd.noiki);
   close(u);

   writeln('       ** kataxwrh8hke sto C:\',dvd.arithmos,'.txt **');
  end;

  if n=3 then                                                              {emfanish stoixeiwn pelath}
  begin
   write('       dwse kwdiko pelath: ');
   read(pelaths.code);
   filename:='C:\'+pelaths.code+'.txt';

   assign(u,filename);
   reset(u);
    repeat
     readln(u,t);
     writeln('          ',t);
    until eof(u);
   close(u);
  end;

  if n=4 then                                                              {emfanish stoixeiwn dvd}
  begin
   write('       dwse au3onta arithmo dvd: ');
   read(dvd.arithmos);
   filename:='C:\'+dvd.arithmos+'.txt';

   assign(u,filename);
   reset(u);
    repeat
     readln(u,t);
     writeln('          ',t);
    until eof(u);
   close(u);
  end;

  if n=5 then                                                              {allagh stoixeiwn pelath}
  begin
   write('       dwse kwdiko pelath: ');
   read(pelaths.code);
   filename:='C:\'+pelaths.code+'.txt';
   readln;

   assign(u,filename);                                               {kolpo gia na diabastei to TXT se merh}
   reset(u);                                                           {(auto htan to poio duskolo kommati)}
     readln(u,pelaths.code);
     readln(u,pelaths.onoma);
     readln(u,pelaths.eponymo);
     readln(u,pelaths.perioxh);
     readln(u,pelaths.thl);
   close(u);

   write(       'allagh onomatos? y/n: ');                   {epiloges allaghs stoixeiwn me 8esimo ws keimeno}
   read(z);                                                            {wste na emfanistous ws eixan sto TXT}
   readln;
   if z='y' then
   begin
   write('       dwse onoma pelath: ');
   read(pelaths.onoma);
   pelaths.onoma:='onoma: '+pelaths.onoma;
   readln;
   end;

   write('       allagh eponymou? y/n: ');
   read(z);
   readln;
   if z='y' then
   begin
   write('       dwse eponymo pelath: ');
   read(pelaths.eponymo);
   pelaths.eponymo:='eponumo: '+pelaths.eponymo;
   readln;
   end;

   write('       allagh dieu8unshs? y/n: ');
   read(z);
   readln;
   if z='y' then
   begin
    write('       dwse perioxh pelath: ');
    read(pelaths.perioxh);
    readln;
                                                                             {kolpo gia na grafei h dieu8unsh se mia grammh}
    write('       dwse odos pelath: ');
    read(pelaths.odos);
    readln;
    
    write('       dwse noumero/kthrio katoikias: ');
    read(pelaths.noumero);
    readln;
    
   pelaths.perioxh:='dieu8unsh: '+pelaths.perioxh+char(32)+pelaths.odos+char(32)+pelaths.noumero;
   end;

   write('       allagh thlefwnou? y/n ');
   read(z);
   readln;
   if z='y' then
   begin
   write('       dwse thlefwno pelath: ');
   read(pelaths.thl);
   pelaths.thl:='thlefwno: '+pelaths.thl;
   readln;
   end;

   assign(u,filename);
   rewrite(u);                                                               {apo8hkeush allagwn sto TXT mas}
    writeln(u,pelaths.code);
    writeln(u,pelaths.onoma);
    writeln(u,pelaths.eponymo);
    writeln(u,pelaths.perioxh);
    writeln(u,pelaths.thl);
   close(u);

   writeln('       ** kataxwrh8hke sto C:\',pelaths.code,'.txt **');
  end;

  if n=6 then
  begin                                                                      {allagh stoixeiwn DVD}
   write('       dwse au3onta tou DVD: ');
   read(dvd.arithmos);
   filename:='C:\'+dvd.arithmos+'.txt';
   readln;

   assign(u,filename);                                                      {diabasma stoixeiwn parwn DVD se kommatia}
   reset(u);
     readln(u,dvd.arithmos);
     readln(u,dvd.name);
     readln(u,dvd.eidos);
     readln(u,dvd.paiktes[1]);
     readln(u,dvd.noiki);
   close(u);
                                                                           {epiloges allaghs stoixeiwn tou DVD}
   write('       allagh onomatos DVD? y/n ');                 {me 8esimo ws keimeno pali wste na fanoun opws htan}
   read(z);
   readln;
   if z='y' then
   begin
   write('       dwse onoma DVD: ');
   read(dvd.name);
   dvd.name:='onoma DVD: '+dvd.name;
   readln;
   end;

   write('       allagh eidous? y/n ');
   read(z);
   readln;
   if z='y' then
   begin
   write('       dwse eidos: ');
   read(dvd.eidos);
   dvd.eidos:='eidos: '+dvd.eidos;
   readln;
   end;

   write('       allagh hthopoiwn? y/n ');
   read(z);
   readln;
   if z='y' then
   begin
    write('       posoi hthopoioi paizoun? ');
    read(sug);
    readln;
    for i:=1 to sug do
    begin 
     write('       dwse hthopoio ',i,': ');                     {kolpo gia na grafoun oi allages twn h8opoiwn se 1 grammh}
     read(dvd.paiktes[i]);
     readln;
    end;
     dvd.paiktes[1]:='basikoi hthopoioi: '+dvd.paiktes[1]+char(32)+dvd.paiktes[2]+char(32)+dvd.paiktes[3];
   end;

   assign(u,filename);
   rewrite(u);                                                        {grapsimo sto TXT twn allagwn twn stoixeiwn tou DVD}
    writeln(u,dvd.arithmos);
    writeln(u,dvd.name);
    writeln(u,dvd.eidos);
    writeln(u,dvd.paiktes[1]);
    writeln(u,dvd.noiki);
   close(u);

   writeln('       ** kataxwrh8hke sto C:\',pelaths.code,'.txt **');
  end;

  if n=7 then
  begin                                                                {noikiasmeno/anoikiasto me thn boh8eia tou char(35)}
   write('       dwse au3onta dvd: ');                 {kai xrhsimopoiwntas to Z na kanei readln ws CHAR kai oxi ws STRING}
   read(dvd.arithmos);                                              {wste na anagnwrisei to char(35) sthn arxh ths grammhs}
   filename:='C:\'+dvd.arithmos+'.txt';
   readln;

   assign(u,filename);
   reset(u);
     readln(u,dvd.arithmos);                                   {pinakas gia na mas bgallei ton noikarh an uparxei}
     readln(u,dvd.name);
     readln(u,dvd.eidos);
     readln(u,dvd.paiktes[1]);
     readln(u,dvd.noiki);
   close(u);

   assign(u,filename);
   reset(u);
    repeat
     readln(u,z);
     if z=char(35) then
     begin
      l:=dvd.noiki;
     end
     else
     begin
      l:='eleu8ero';
     end;
    until eof(u);
   close(u);

   writeln('       !!! ',l,' !!!');
  end;

  if n=8 then                                                             {noikiasma se pelath}
  begin
   write('       dwse au3onta dvd: ');
   read(dvd.arithmos);
   filename:='C:\'+dvd.arithmos+'.txt';
   readln;

   write('       dwse kwdiko pelath: ');
   read(pelaths.code);
   readln;

   assign(u,filename);                                                    {anoigma stoixeiwn DVD}
   reset(u);
     readln(u,dvd.arithmos);                                   
     readln(u,dvd.name);
     readln(u,dvd.eidos);
     readln(u,dvd.paiktes[1]);                                     {pros8etoume sto dvd.noiki me to char(35) sthn arxh}
     readln(u,dvd.noiki);                                     {wste na mporei na ginei ginei elenxos noikiasmatos sto bhma 7}
   close(u);                                                         {kai bazoume kai to onoma tou noikiarh}

   dvd.noiki:=char(35)+' noikiasmeno se '+pelaths.code;

   assign(u,filename);
   rewrite(u);                                                        {grapsimo sto TXT twn allagwn twn stoixeiwn tou DVD}
    writeln(u,dvd.arithmos);
    writeln(u,dvd.name);
    writeln(u,dvd.eidos);
    writeln(u,dvd.paiktes[1]);
    writeln(u,dvd.noiki);
   close(u);
                                                  
   writeln('       !!! noikiasthke me epituxia ston ',pelaths.code,' !!!');
  end;

  if n=9 then
  begin                                                                 {3enoikiasma apo pelath}
   write('       dwse au3onta dvd: ');
   read(dvd.arithmos);
   filename:='C:\'+dvd.arithmos+'.txt';
   readln;

   assign(u,filename);
   reset(u);                                                          {trexw to TXT}
     readln(u,dvd.arithmos);
     readln(u,dvd.name);
     readln(u,dvd.eidos);
     readln(u,dvd.paiktes[1]);
     readln(u,dvd.noiki);
   close(u);
                                                                      {8etw char(32) thn noikiash dld kenh}
   dvd.noiki:=char(32);

   assign(u,filename);                                              {eisagw sto TXT thn kenh dhlwsh na eleu8erw8ei to dvd}
   rewrite(u);
    writeln(u,dvd.arithmos);
    writeln(u,dvd.name);
    writeln(u,dvd.eidos);
    writeln(u,dvd.paiktes[1]);
    writeln(u,dvd.noiki);
   close(u);

   writeln('       !!! to DVD einai pleon eleu8ero !!!');
  end;

 write(char(13));
 writeln('*******************************************************************************');   
 write('       8es na sunexiseis? (n = EXIT): ');
 read(logic);                                             {epanalhpsh olou tou programmatos gia na mhn 3ananoigw sunexeia}
 readln;
 until logic='n';

END.

