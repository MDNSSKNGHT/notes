#import "math.typ": *

= Transformaciones Lineales

#definition[
  Sean $U$ y $V$ dos $KK$-espacios vectoriales, una función $
    T : U -> V $ es una transformación lineal si se cumple
  - $forall vu, vv in V : T(vu + vv) = T(vu) + T(vv)$.
  - $forall lambda in KK, forall vu in V: T(lambda vu) = lambda T(vu)$.
]

#definition[
  Sea $T : U -> V$ transformación lineal, definimos los conjuntos $
    ker(T)  &= { vu in U | T(vu) = v0 } subset.eq U \
    im(T)   &= { vv in V | v = T(vu) "para algún" vu in U } subset.eq V $
]

#lemma[
  $ker(T) < U$
]
#proof[
  Dados $vu, vv in ker(T)$ $ forall alpha, beta in KK:
    T( alpha vu + beta vv ) & = alpha T(vu) + beta T(vv) \
                            & = v0                       \
       alpha vu + beta vv   & in ker(T) -> ker(T) < U $
]

#lemma[
  $im(T) < V$
]
#proof[
  Dados $vu', vv' in im(T)$, existen $vu, vv in U$ tal que
  $vu' = T(vu)$ y $vv' = T(vv)$, luego $
    forall alpha, beta in KK:
      alpha vu' + beta vv' & =    alpha T(vu) + beta T(vv)  \
                           & = T( alpha vu + beta vv )      \
    alpha vu' + beta vv'   & in im(T) -> im(T) < V $
]
#lemma[
  $T$ es inyectiva $<->$ T lleva un conjunto l.i. a un conjunto l.i.
]
#proof[
  Definimos $S = { vu_1, ..., vu_k } subset U$ l.i. y
  ${ T(vu_1), ..., T(vu_k) } subset V$
  $
    forall vv in V, exists vu in U:
           vv & = T(vu)                              \
           vv & = T( sum _(i=1)^k alpha_i vu_i ),
            { alpha_i } _(i=1)^k subset KK           \
           vv &= sum _(i=1) ^k alpha_i T (vu_i), $ el
  conjunto ${ T(vu_1), ..., T(vu_k) }$ es l.i. ya que genera $V$.
  Procedemos a demostrar el retorno $
      forall vu, vv in V | vu = vv: vu = T(vu') " y " vv = T(vv') \
             vu'  = sum _(i=1)^k alpha_i vu_i,
           T(vu') = sum _(i=1)^k alpha_i T(vu_i)                  \
             vv'  = sum _(i=1)^k beta _i vu_i,
           T(vv') = sum _(i=1)^k beta _i T(vu_i)                  \
      sum _(i=1)^k (alpha_i - beta_i) T(vu_i) = v0
                <-> alpha_i = beta_i, forall i in I_k             \
      T(vu') = T(vv') -> vu' = vv'
  $
]

#lemma[
  $T$ es sobreyectiva $<->$ T lleva un conjunto generador a un
  conjunto generador.
]
#proof[
  La prueba se deja como ejercicio para el lector.
]

#lemma[
  $T$ es biyectiva $<->$ T lleva una base a una base.
]
#proof[
  La prueba se deja como ejercicio para el lector.
]

#definition[
  Sea $T: U -> V$ una transformación lineal, se dice que $T$ es
  - monomorfismo si $T$ es inyectiva.
  - epimorfismo si $T$ es sobreyectiva.
  - isomorfimo si $T$ es biyectiva.
]

#theorem[
  Dados $V$ y $W$ ambos $KK$-espacios vectoriales y
  $B = { vv_1, ..., vv_n }$ base de $V$ y ${ vw_1, ..., vw_n } subset W$
  se cumple $
    exists! T: V -> W "transformación lineal" mid(|)
      T(vv_i) = vw_i, forall i in I_n
  $
]
#proof[
  Empecemos por la existencia. Sea $vv in V$, como $B$ es base de $V$
  entonces $
    exists { alpha_i } _(i=1) ^n subset KK mid(|)
      vu = sum _(i=1)^n alpha_i vv_i,
  $ definamos $
    T: U & -> V \
      underbrace(vu, sum _(i=1)^n alpha_i vv_i)
      &  arrow.r.bar sum _(i=1)^n alpha_i vw_i, $
  tenemos que demostrar la buena definición de $T$,
  $forall vv, vv' in V mid(|) vv = vv'$ se tiene
  $
      vv  = sum _(i=1)^n  alpha  _i vv_i & and
      vv' = sum _(i=1)^n  alpha' _i vv_i                 \
            sum _(i=1)^n (alpha_i - alpha'_i) vv_i = v0
               & -> alpha_i = alpha'_i, forall i in I_n  \
      vv = vv' & -> T(vv) = T(vv')
  $ y ahora se debe demostrar que $T$ es una transformación lineal
  $
    T( lambda_1 vv + lambda_2 vv' ) &= T(
       lambda_1 sum _(i=1)^n alpha  _i vv_i +
       lambda_2 sum _(i=1)^n alpha' _i vv_i )                            \
    & = T( sum _(i=1)^n (lambda_1 alpha_i  + lambda _2 alpha' _i) vv_i ) \
    & =    sum _(i=1)^n (lambda_1 alpha_i  + lambda _2 alpha' _i) vw_i   \
    & =    lambda_1 sum _(i = 1)^n alpha  _i vw_i +
           lambda_2 sum _(i = 1)^n alpha' _i vw_i                        \
    & = lambda_1 T(vv) + lambda_2 T(vv')
  $ ahora nos quedaría demostrar que $T$ es único, supongamos que
  existe $T': U -> V$ tal que $T'(vv_i) &= vw_i$
  $
    T'(vu) = T'( sum _(i=1) ^k alpha _i vv_i )
      = sum _(i=1)^k alpha_i T' (vv_i) 
      = sum _(i=1)^k alpha_i     vw_i
      = sum _(i=1)^k alpha_i T  (vv_i)
      = T( sum _(i=1)^k alpha_i vv_i ) = T(vu)
  $
]

#corollary[
  Si $T, T' : U -> V$ son transformaciones lineales que coincidien en una
  base $B$ de $U$, entonces $T = T'$.
]

#theorem("De núcleo e imagen")[
  Sea $T: U -> V$ transformación lineal con $dim U < +infinity$ $
    dim U = dim ker(T) + dim im(T) $
]
#proof[
  Sea ${vu_1, ..., vu_k}$ base de $ker(T)$ por el teorema de completación
  de bases, existen $vu_(k+1), ..., vu_n in U$ tal que el conjunto ${vu_1
  ..., vu_k, vu_(k+1), ..., vu_n}$ es base de $U$
]

#corollary[
  El conjunto ${ T( vu_(k+1) ), ..., T( vu_n ) }$ es base de $im T$
]
#proof[
  Probemos que el conjunto es l.i., supongamos $exists { alpha _i }
  _(i=1) ^n subset KK$ tal que $
         sum _(i=k+1)^n alpha_i T(vu_i) &= v0 \
      T( sum _(i=k+1)^n alpha_i vu_i)   &= v0
      -> sum _(i=k+1)^n alpha_i vu_i in ker(T) \
         sum _(i=k+1)^n alpha_i vu_i    & = sum_(i=1)^k beta_i vu_i \
         sum _(i=1)^n (-beta_i) vu_i +
         sum _(i=k+1)^n alpha_i vu_i    & = v0 -> alpha_i = beta_i = 0
          " para sus índices respectivos" $
]
