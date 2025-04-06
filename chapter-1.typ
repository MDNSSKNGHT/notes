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
    T(alpha vu + beta vv) &= alpha T(vu) + beta T(vv) \
                          &= v0                       \
    alpha u + beta v &in ker(T) -> ker(T) < U $
]

#lemma[
  $im(T) < V$
]
#proof[
  Dados $vu', vv' in im(T)$, existen $vu, vv in U$ tal que
  $vu' = T(vu)$ y $vv' = T(vv)$, luego $
    forall alpha, beta in KK:
      alpha vu' + beta vv' &= alpha T(vu) + beta T(vv)  \
                           &= T(alpha vu + beta vv)     \
    alpha vu' + beta vv' & in im(T) -> im(T) < V $
]

#lemma[
  $T$ es inyectiva $<->$ T lleva un conjunto l.i. a un conjunto l.i.
]
#proof[
  Definimos $S = {vu_1, ..., vu_k} subset U$ l.i. y
  ${T(vu_1), ..., T(vu_k)} subset V$
  $
    forall vv in V, exists vu in U:
           vv &= T(vu)                              \
           vv &= T( sum _(i=1) ^k alpha_i vu_i ),
            { alpha_i } _(i=1) ^k subset KK         \
           vv &= sum _(i=1) ^k alpha_i T (vu_i), $ el
    conjunto ${T(vu_1), ..., T(vu_k)}$ es l.i. ya que genera $V$.
    Procedemos a demostrar el retorno $
      forall vu, vv in V | vu = vv: vu = T(vu') " y " vv = T(vv') \
             vu'  = sum _(i=1) ^k alpha_i vu_i,
           T(vu') = sum _(i=1) ^k alpha_i T(vu_i)             \
             vv'  = sum _(i=1) ^k beta_i vu_i,
           T(vv') = sum _(i=1) ^k beta_i T(vu_i)              \
      sum _(i=1) ^k (alpha_i - beta_i) T(vu_i) = v0
                 <-> alpha_i = beta_i, forall i in I_k \
      T(vu') = T(vv') -> vu' = vv' $
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
  $B={vv_1, ..., vv_n}$ base de $V$ y ${vw_1, ..., vw_n} subset W$
  se cumple $
    exists! T: V -> W "transformación lineal" mid(|)
      T(vv_i) = vw_i, forall i in I_n
  $
]
#proof[
  Empecemos por la existencia. Sea $vv in V$, como $B$ es base de $V$
  entonces $
    exists { alpha_i } _(i=1) ^n subset KK mid(|)
      vu = sum _(i=1) ^n alpha_i vv_i,
  $ definamos $
    T: U & -> V \
      vu & arrow.r.bar sum _(i=1) ^n alpha_i vw_i,
  $ tenemos que demostrar la buena definición de $T$,
  $forall vv, vv' in U mid(|) vv = vv'$ se tiene
  $
      vv  = sum _(i = 1) ^n alpha  _i  vv_i  & and
      vv' = sum _(i = 1) ^n alpha' _i vv_i                   \
      sum _(i = 1) ^n (alpha _i - alpha' _i) vv_i  = v0 & ->
        alpha _i = alpha' _i, forall i in I_n                 \
      vv = vv' & -> T(vv) = T(vv')
  $
]
