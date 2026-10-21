# Dra. Rita Almeida — Psicóloga Clínica

Landing page estática (PT-PT) — paleta rosa-claro `#F2D5D9` / bordô `#7A1F3D` / creme `#FBF6EF`, símbolo das cadeiras (individualidade).

- **Formação:** UAL · ISPA | **Estágios:** APPDA-Setúbal
- **Secções:** Hero · Sobre · Áreas (Adolescentes 12-17 / Adultos 18+) · Consultas Online · Cadeiras · FAQ · CTA
- **Stack:** HTML+CSS puro, sem build, acessível (skip link, aria-label, FAQ accordion, focus-visible)
- **Deploy local:** Docker `:8081` • K8s `NodePort 30081/30082` • Cloudflare Pages (conectar este repo)

> Proposta de design para a Dra. Rita Almeida — marca/domínio em aberto.

## Publicar na Cloudflare Pages

1. https://dash.cloudflare.com → Workers & Pages → Create → Pages → Connect to Git
2. Selecione `euclidesmcse/psicologa-rita-almeida` → Framework preset: **None** → Build command: *(vazio)* → Output: `/` → Save and Deploy

## Local

```bash
docker build -t psicologa-demo . && docker run -p 8081:80 psicologa-demo
# ou
kubectl apply -f k8s-deploy.yaml
```
