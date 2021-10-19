<TeXmacs|1.99.2>

<style|generic>

<\body>
  Let <math|n = 115792089237316195423570985008687907852837564279074904382605163141518161494337>.

  Let <math|\<lambda\>=37718080363155996902926221483475020450927657555482586988616620542887997980018>.

  Let <math|a<rsub|1>=64502973549206556628585045361533709077>.

  Let <math|b<rsub|1>=-303414439467246543595250775667605759171>.

  Let <math|a<rsub|2>=367917413016453100223835821029139468248>.

  Let <math|b<rsub|2>=64502973549206556628585045361533709077>.

  Let <math|g<rsub|1>=4227266874520800895210949532813473158086059>.

  Let <math|g<rsub|2>=19884568704925469481058354834152211033104914>.

  Let <math|\<b-M\>=<matrix|<tformat|<table|<row|<cell|a<rsub|1>>|<cell|a<rsub|2>>>|<row|<cell|b<rsub|1>>|<cell|b<rsub|2>>>>>>>.

  Let <math|k\<in\>\<bbb-Z\>> such that <math|0\<leq\>k\<less\>2<rsup|256>>.

  Let <math|c<rsub|1>\<in\>\<bbb-Z\>> such that
  <math|<around*|\||c<rsub|1>-<frac|k*g<rsub|1>|2<rsup|272>>|\|>\<leq\><frac|1|2>>.

  Let <math|c<rsub|2>\<in\>\<bbb-Z\>> such that
  <math|<around*|\||c<rsub|2>-<frac|k*g<rsub|2>|2<rsup|272>>|\|>\<leq\><frac|1|2>>.

  Let <math|\<varepsilon\><rsub|1>=<frac|g<rsub|1>|2<rsup|272>>-<frac|b<rsub|2>|n>>.

  Let <math|\<varepsilon\><rsub|2>=-<frac|b<rsub|1>|n>-<frac|g<rsub|2>|2<rsup|272>>>.

  Let <math|k<rsub|1>=k-c<rsub|1>*a<rsub|1>-c<rsub|2>*a<rsub|2>>. (Note, not
  modular arithemetic).

  Let <math|k<rsub|2>=-c<rsub|1>*b<rsub|1>-c<rsub|2>*b<rsub|2> >. (Note, not
  modular arithmetic)

  Let <math|r<rsub|2>=k<rsub|2> <around*|(|mod n|)>>.

  Let <math|r<rsub|1>=k-r<rsub|2>\<lambda\> <around*|(|mod n|)>>.

  The values of <math|r<rsub|1>> and <math|r<rsub|2>> should be the values
  returned by <verbatim|secp256k1_scalar_split_lambda> when given <math|k> as
  input.

  <\lemma>
    <math|n\|a<rsub|1>+b<rsub|1>*\<lambda\>>
  </lemma>

  <\lemma>
    <math|n\|a<rsub|2>+b<rsub|2>*\<lambda\>>
  </lemma>

  <\lemma>
    <math|0\<less\>\<varepsilon\><rsub|1>,\<varepsilon\><rsub|2>\<less\>2<rsup|-273>>.
  </lemma>

  <\lemma>
    <math|<around*|\||\<b-M\>|\|>=n>.
  </lemma>

  <\lemma>
    <math|\<b-M\><matrix|<tformat|<table|<row|<cell|<frac|k*b<rsub|2>|n>>>|<row|<cell|-<frac|k*b<rsub|1>|n>>>>>>=<matrix|<tformat|<table|<row|<cell|k>>|<row|<cell|0>>>>>>.
  </lemma>

  <\lemma>
    <math|<around*|\||c<rsub|1> -<frac|k*b<rsub|2>|n>|\|>\<less\><frac|1|2>+<frac|1|2<rsup|17>>>.
  </lemma>

  <\proof>
    \;

    <math|<tabular|<tformat|<table|<row|<cell|>|<cell|<math|<around*|\||c<rsub|1>
    -<frac|k*b<rsub|2>|n>|\|>>>>|<row|<cell|=>|<cell|<around*|\||c<rsub|1>
    -<frac|k*g<rsub|1>|2<rsup|272>>+<frac|k*g<rsub|1>|2<rsup|272>>-<frac|k*b<rsub|2>|n>|\|>>>|<row|<cell|\<leq\>>|<cell|<around*|\||c<rsub|1>
    -<frac|k*g<rsub|1>|2<rsup|272>>|\|>+<around*|\||<frac|k*g<rsub|1>|2<rsup|272>>-<frac|k*b<rsub|2>|n>|\|>>>|<row|<cell|=>|<cell|<around*|\||c<rsub|1>
    -<frac|k*g<rsub|1>|2<rsup|272>>|\|>+k<around*|\||\<varepsilon\><rsub|1>|\|>>>|<row|<cell|\<less\>>|<cell|<frac|1|2>+2<rsup|256>*2<rsup|-273>>>|<row|<cell|=>|<cell|<frac|1|2>+<frac|1|2<rsup|17>>>>>>>>

    \;
  </proof>

  <\lemma>
    <math|<around*|\||c<rsub|2> +<frac|k*b<rsub|1>|n>|\|>\<less\><frac|1|2>+<frac|1|2<rsup|17>>>.
  </lemma>

  <\proof>
    \;

    <math|<tabular|<tformat|<table|<row|<cell|>|<cell|<math|<around*|\||c<rsub|2>
    +<frac|k*b<rsub|1>|n>|\|>>>>|<row|<cell|=>|<cell|<around*|\||c<rsub|2>
    -<frac|k*g<rsub|2>|2<rsup|272>>+<frac|k*g<rsub|2>|2<rsup|272>>+<frac|k*b<rsub|1>|n>|\|>>>|<row|<cell|\<leq\>>|<cell|<around*|\||c<rsub|1>
    -<frac|k*g<rsub|2>|2<rsup|272>>|\|>+<around*|\||<frac|k*g<rsub|2>|2<rsup|272>>+<frac|k*b<rsub|1>|n>|\|>>>|<row|<cell|=>|<cell|<around*|\||c<rsub|1>
    -<frac|k*g<rsub|1>|2<rsup|272>>|\|>+k<around*|\||-\<varepsilon\><rsub|2>|\|>>>|<row|<cell|\<less\>>|<cell|<frac|1|2>+2<rsup|256>*2<rsup|-273>>>|<row|<cell|=>|<cell|<frac|1|2>+<frac|1|2<rsup|17>>>>>>>>

    \;
  </proof>

  <\lemma>
    <math|<around*|\||k<rsub|1>|\|>\<less\><around*|(|a<rsub|1>+a<rsub|2>|)><around*|(|<frac|1|2>+<frac|1|2<rsup|17>>|)>\<less\>216213492388562293480965471806682953052>.
  </lemma>

  <\proof>
    \;

    <math|<tabular|<tformat|<table|<row|<cell|>|<cell|<math|<around*|\||k<rsub|1>|\|>>>>|<row|<cell|=>|<cell|<around*|\||k-c<rsub|1>*a<rsub|1>-c<rsub|2>*a<rsub|2>|\|>>>|<row|<cell|=>|<cell|<around*|\||k*<frac|a<rsub|1>*b<rsub|2>-a<rsub|2>*b<rsub|1>|n>-c<rsub|1>*a<rsub|1>-c<rsub|2>*a<rsub|2>|\|>>>|<row|<cell|=>|<cell|<around*|\||<around*|(|k*<frac|b<rsub|2>|n>-c<rsub|1>|)>*a<rsub|1>-<around*|(|k*<frac|b<rsub|1>|n>+c<rsub|2>|)>*a<rsub|2>|\|>>>|<row|<cell|\<leq\>>|<cell|<around*|\||k*<frac|b<rsub|2>|n>-c<rsub|1>|\|>*a<rsub|1>+<around*|\||k*<frac|b<rsub|1>|n>+c<rsub|2>|\|>*a<rsub|2>>>|<row|<cell|\<less\>>|<cell|<around*|(|<frac|1|2>+<frac|1|2<rsup|17>>|)>*a<rsub|1>+<around*|(|<frac|1|2>+<frac|1|2<rsup|17>>|)>*a<rsub|2>>>|<row|<cell|=>|<cell|<around*|(|a<rsub|1>+a<rsub|2>|)><around*|(|<frac|1|2>+<frac|1|2<rsup|17>>|)>>>|<row|<cell|\<less\>>|<cell|216213492388562293480965471806682953052>>>>>>

    \;
  </proof>

  <\lemma>
    <math|<around*|\||k<rsub|2>|\|>\<less\><around*|(|b<rsub|2>-b<rsub|1>|)><around*|(|<frac|1|2>+<frac|1|2<rsup|17>>|)>\<less\>183961513495325369486767030355733591695>.
  </lemma>

  <\proof>
    \;

    <math|<tabular|<tformat|<table|<row|<cell|>|<cell|<math|<around*|\||k<rsub|2>|\|>>>>|<row|<cell|=>|<cell|<around*|\||-c<rsub|1>*b<rsub|1>-c<rsub|2>*b<rsub|2>|\|>>>|<row|<cell|=>|<cell|<around*|\||k*<frac|b<rsub|1>*b<rsub|2>-b<rsub|2>*b<rsub|1>|n>-c<rsub|1>*b<rsub|1>-c<rsub|2>*b<rsub|2>|\|>>>|<row|<cell|=>|<cell|<around*|\||<around*|(|k*<frac|b<rsub|2>|n>-c<rsub|1>|)>*b<rsub|1>-<around*|(|k*<frac|b<rsub|1>|n>+c<rsub|2>|)>*b<rsub|2>|\|>>>|<row|<cell|\<leq\>>|<cell|<around*|\||k*<frac|b<rsub|2>|n>-c<rsub|1>|\|>*<around*|(|-b<rsub|1>|)>+<around*|\||k*<frac|b<rsub|1>|n>+c<rsub|2>|\|>*b<rsub|2>>>|<row|<cell|\<less\>>|<cell|<around*|(|<frac|1|2>+<frac|1|2<rsup|17>>|)>*<around*|(|-b<rsub|1>|)>*+<around*|(|<frac|1|2>+<frac|1|2<rsup|17>>|)>*b<rsub|2>>>|<row|<cell|=>|<cell|<around*|(|b<rsub|2>-b<rsub|1>|)><around*|(|<frac|1|2>+<frac|1|2<rsup|17>>|)>>>|<row|<cell|\<less\>>|<cell|183961513495325369486767030355733591695>>>>>>

    \;
  </proof>

  <\lemma>
    <math|r<rsub|1>\<equiv\>k<rsub|1><around*|(|mod n|)>>.
  </lemma>

  <\proof>
    \;

    <math|<tabular|<tformat|<table|<row|<cell|>|<cell|<math|r<rsub|1>>>>|<row|<cell|\<equiv\>>|<cell|k-r<rsub|2>\<lambda\>>>|<row|<cell|=>|<cell|k+c<rsub|1>*b<rsub|1>*\<lambda\>+c<rsub|2>*b<rsub|2>\<lambda\>>>|<row|<cell|\<equiv\>>|<cell|k+c<rsub|1>*b<rsub|1>*\<lambda\>-c<rsub|1>*<around*|(|a<rsub|1>+b<rsub|1>*\<lambda\>|)>+c<rsub|2>*b<rsub|2>\<lambda\>-c<rsub|2>*<around*|(|a<rsub|2>+b<rsub|2>*\<lambda\>|)>>>|<row|<cell|=>|<cell|k-c<rsub|1>*a<rsub|1>*-c<rsub|2>*a<rsub|2>>>|<row|<cell|=>|<cell|k<rsub|1>>>>>>>

    \;
  </proof>

  <\theorem>
    <math|0\<leq\>r<rsub|1>\<less\>216213492388562293480965471806682953052>

    \ or

    \ <math|n-216213492388562293480965471806682953051\<leq\>r<rsub|1>\<less\>n>.<math|>
  </theorem>

  <\theorem>
    <math|0\<leq\>r<rsub|2>\<less\>183961513495325369486767030355733591695>

    \ or

    \ <math|n-183961513495325369486767030355733591694\<leq\>r<rsub|2>\<less\>n>.<math|>
  </theorem>
</body>

<initial|<\collection>
</collection>>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?>>
  </collection>
</references>