---
name: Fac Solution
description: Landing de agência de tráfego pago. Mídia exterior à noite, cartaz laranja aceso sobre grafite.
colors:
  asfalto: "#0B0B0D"
  grafite: "#141417"
  grafite-alto: "#1C1C21"
  laranja-cartaz: "#FF5A1F"
  vermelho-sinal: "#E3262E"
  branco: "#FFFFFF"
  cinza-claro: "#B5B5B5"
  cinza-reservado: "#8E8E94"
typography:
  display:
    fontFamily: "Anton, 'Bebas Neue', 'Arial Narrow', sans-serif"
    fontSize: "clamp(3rem, 13.2vw, 6rem)"
    fontWeight: 400
    lineHeight: 1.04
  headline:
    fontFamily: "Anton, 'Bebas Neue', 'Arial Narrow', sans-serif"
    fontSize: "clamp(2.125rem, 9.4vw, 4.5rem)"
    fontWeight: 400
    lineHeight: 1.02
  title:
    fontFamily: "Anton, 'Bebas Neue', 'Arial Narrow', sans-serif"
    fontSize: "1.625rem–1.75rem"
    fontWeight: 400
    lineHeight: 1
  body:
    fontFamily: "Manrope, system-ui, sans-serif"
    fontSize: "1rem–1.125rem"
    fontWeight: 400
    lineHeight: 1.6
  label:
    fontFamily: "Manrope, system-ui, sans-serif"
    fontSize: "0.6875rem"
    fontWeight: 700
    letterSpacing: "0.16em"
rounded:
  cartaz: "3px"
  base: "6px"
  pilula: "999px"
spacing:
  gutter-mobile: "20px"
  gutter-desktop: "32px"
  secao: "clamp(80px, 13vw, 136px)"
  container: "1240px"
components:
  button-primary:
    backgroundColor: "{colors.laranja-cartaz}"
    textColor: "{colors.asfalto}"
    rounded: "{rounded.base}"
    padding: "0 26px"
    height: "56px"
  button-dark:
    backgroundColor: "{colors.asfalto}"
    textColor: "{colors.branco}"
    rounded: "{rounded.base}"
    height: "56px"
  button-line:
    backgroundColor: "rgba(255,90,31,.08)"
    textColor: "{colors.branco}"
    rounded: "{rounded.base}"
    height: "48px"
---

# Design System: Fac Solution

## Overview

**Creative North Star: "O outdoor aceso na rua escura"**

A página é a rua à noite e o produto é o cartaz iluminado. O fundo é asfalto e grafite com grid fino e granulado; o laranja aparece como tinta de cartaz, não como enfeite. O momento de assinatura é o outdoor do hero: refletores que acendem com uma leve tremulação quando ele entra na tela, folhas coladas com emendas visíveis, placa do operador no chassi e pés que pisam na faixa de números.

A densidade é baixa e o tom é direto: títulos condensados em caixa alta carregam a voz, texto corrido curto em Manrope explica. Espaços reservados para dados reais são tratados como arte-final (tracejado laranja e marcas de corte), para parecerem intencionais numa demonstração.

**Key Characteristics:**
- Tema único escuro, escolhido pelo cliente.
- Laranja como cor de cartaz e de ação; vermelho só como sinal pontual (o "=" da equação e o fim do gradiente do CTA).
- Linhas finas laranja como estrutura (linha da rua, conectores, régua do timeline, divisórias), nunca como barra lateral de card.

## Colors

Grafite quase preto com um único laranja saturado que faz o trabalho de cartaz e de botão.

### Primary
- **Laranja-cartaz** (#FF5A1F): cartazes (outdoor e bloco de nicho), botões primários, palavras-chave nos títulos, ícones, conectores e marcas de corte.

### Secondary
- **Vermelho-sinal** (#E3262E): sinal de igualdade na equação e fim do gradiente laranja→vermelho do CTA final e do cartaz de nicho. Uso raro.

### Neutral
- **Asfalto** (#0B0B0D): fundo base e seções ímpares; texto sobre o laranja.
- **Grafite** (#141417): seções alternadas, cards sobre asfalto, rodapé.
- **Grafite-alto** (#1C1C21): superfícies sobre grafite (card de depoimento só texto).
- **Branco** (#FFFFFF): títulos e textos de destaque.
- **Cinza-claro** (#B5B5B5): texto corrido.
- **Cinza-reservado** (#8E8E94): texto entre colchetes e rótulos de espaço reservado (5,3:1 a 5,9:1 sobre os fundos).

### Named Rules
**A regra do cartaz.** O laranja ocupa área cheia em no máximo dois lugares (outdoor do hero e bloco de nicho); no resto da página ele é linha, ícone, palavra ou botão.

## Typography

**Display Font:** Anton (com Bebas Neue, Arial Narrow)
**Body Font:** Manrope (com system-ui)

**Character:** Anton é a letra de cartaz de rua, condensada e alta; Manrope é a voz falada, limpa e próxima.

### Hierarchy
- **Display** (400, clamp(3rem, 13.2vw, 6rem), 1.04): só o título do hero.
- **Headline** (400, clamp(2.125rem, 9.4vw, 4.5rem), 1.02): títulos de seção, caixa alta, palavra-chave em laranja.
- **Title** (400, 1.625–1.75rem, 1): títulos de pilar e etapa.
- **Body** (400, 1rem–1.125rem, 1.6): parágrafos de até 3 linhas no celular, medida até ~46ch.
- **Label** (700, 0.6875rem, 0.16em, caixa alta): rótulos de espaço reservado e avisos.

### Named Rules
**A regra do acento alto.** Anton com acentos (Á, Ã, É, Í) precisa de entrelinha ≥ 1.02 em títulos e ≥ 1.05 em blocos de frase, senão o til encosta na linha de cima.

## Layout

Coluna de 1240px com gutter de 20px no celular e 32px a partir de 980px (somados ao safe-area). Seções em faixas cheias alternando asfalto e grafite, com padding vertical clamp(80px, 13vw, 136px). Mobile-first: listas viram 2×2 ou 4 colunas a partir de 640/980px; resultados e depoimentos são carrosséis com scroll-snap no celular e grade no desktop; resultados e FAQ usam título fixo à esquerda no desktop.

## Elevation & Depth

Profundidade por camadas tonais (asfalto → grafite → grafite-alto) e sombras escuras com deslocamento e desfoque. Sem halos coloridos.

### Shadow Vocabulary
- **Botão** (`0 10px 24px -12px rgba(0,0,0,.85), 0 2px 6px rgba(0,0,0,.3)`): botões primários.
- **Objeto** (`0 30px 50px -30px rgba(0,0,0,.95)`): celulares e chassi do outdoor.

## Shapes

Cantos quase retos: 3px em cartazes, 6px em botões e cards, pílula só em avisos pequenos. Celulares e reels usam o raio do próprio aparelho. Bordas de 1px; espaços reservados com tracejado laranja a 40% e cantos de corte sólidos de 10px.

## Components

### Buttons
- **Shape:** 6px, altura 56px (48px no header).
- **Primary:** laranja com texto asfalto, Manrope 800, ícone do WhatsApp à esquerda.
- **Hover / Focus:** sobe 2px e clareia só em dispositivos com mouse; foco com contorno laranja de 2px (asfalto sobre o cartaz laranja); `:active` escala 0,97 em 100ms.
- **Dark:** asfalto com texto branco, usado sobre o cartaz laranja.
- **Line:** contorno laranja a 40% no header.

### Espaço reservado
- **Style:** tracejado laranja 40%, fundo branco 3%, cantos de corte, ícone laranja e rótulo em caixa alta cinza; texto inline entre colchetes em cinza-reservado.

### Outdoor (assinatura)
Chassi grafite, cartaz laranja 2.2:1 com emendas de folhas, texto em Anton dimensionado em `cqi`, faixa preta com "impossível de ignorar.", três refletores com cones de luz e placa do operador. Acende ao entrar na tela.

## Do's and Don'ts

### Do:
- **Do** alimentar todo dado real pelo objeto `DADOS` e deixar o espaço reservado aparecer quando o campo estiver vazio.
- **Do** usar o laranja como tinta de cartaz e de ação, e o vermelho só como sinal.
- **Do** proteger todo `:hover` com `(hover: hover) and (pointer: fine)` e dar `:active` a tudo que é tocável.

### Don't:
- **Don't** colocar rótulo pequeno (eyebrow) acima de títulos.
- **Don't** usar sombra colorida brilhante em botões; a sombra é escura.
- **Don't** inventar números, clientes ou depoimentos na página.
