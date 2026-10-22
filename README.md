# Dra. Rita Almeida — Psicóloga Clínica

Landing page estática (PT-PT) — paleta rosa-claro `#F2D5D9` / bordô `#7A1F3D` / creme `#FBF6EF`, símbolo das cadeiras (individualidade).

- **Formação:** UAL · ISPA | **Estágios:** APPDA-Setúbal
- **Secções:** Hero · Sobre · Áreas (Adolescentes 12-17 / Adultos 18+) · Consultas Online · Cadeiras · FAQ · CTA · Política de Privacidade · 404
- **Stack:** HTML+CSS puro, sem build, acessível (skip link, aria-label, FAQ accordion, focus-visible, `prefers-reduced-motion`)
- **SEO/performance:** fontes self-hosted, `srcset` WebP/JPG, OG image 1200×630, JSON-LD (`MedicalBusiness` + `FAQPage`), `robots.txt`, `sitemap.xml`, manifest PWA
- **Deploy:** Cloudflare Pages ✅ `psicologa-rita-almeida.pages.dev` (Git `main` → produção) + `euclidespns.workers.dev` (legado) • Docker `:8081` • K8s `NodePort 30081`

> Proposta de design para a Dra. Rita Almeida — marca/domínio em aberto.

## Publicar na Cloudflare Pages

1. https://dash.cloudflare.com → Workers & Pages → Create → Pages → Connect to Git
2. Selecione `euclidesmcse/psicologa-rita-almeida` → Framework preset: **None** → Build command: *(vazio)* → Output: `/` → Save and Deploy

## Estrutura

```
index.html            # landing page (CSS/JS inline)
privacidade.html      # política de privacidade (RGPD)
404.html              # página de erro (Cloudflare Pages / nginx)
assets/               # imagens, favicon, ícones, fontes self-hosted
  fonts/              # Fraunces + Outfit (woff2) + fonts.css
  og-image.jpg        # imagem de partilha 1200×630
robots.txt
sitemap.xml
site.webmanifest      # manifest PWA
_headers              # cabeçalhos de segurança/cache (Cloudflare Pages)
```

> **Privacidade:** `privacidade.html` é um documento de trabalho. Deve ser revisto pela responsável (e, se necessário, por jurista) antes da publicação definitiva.

## Local

```bash
docker build -t psicologa-site .
docker run -p 8081:80 psicologa-site
# ou (carregar a imagem no cluster antes)
kubectl apply -f k8s-deploy.yaml
# http://localhost:30081
```

> **Nota:** `canonical`, `og:url` e `og:image` apontam para `psicologa-rita-almeida.pages.dev` enquanto o domínio final (`ritaalmeida.pt`) não estiver confirmado. Atualizar estes valores quando a marca/domínio forem definidos.
