# CALLMARIA — catálogo digital

Site estático gratuito para GitHub Pages, com catálogo conectado ao Supabase e finalização pelo WhatsApp.

## Publicação
1. Envie os arquivos desta pasta para a **raiz** do repositório `catalogocallmaria2026` (inclusive a pasta `assets`).
2. No Supabase, abra SQL Editor e execute `supabase.sql`.
3. No Supabase, copie Project URL e chave **publishable/anon** para `config.js`. **NUNCA** use chave secret/service_role ou senha do banco.
4. No Supabase Table Editor > `products`, adicione os oito produtos. `active=true` torna o produto visível. `colors` é uma lista de textos. `price` é número, sem R$.
5. Para fotos, crie um bucket público `product-images` no Supabase Storage e envie imagens otimizadas. Copie a URL pública da foto para `image_url` do produto. Só coloque fotos de produtos destinadas à publicação nesse bucket.
6. No GitHub, Settings > Pages > Deploy from a branch > main / (root) > Save.
7. Acesse o endereço indicado pelo GitHub Pages e teste no celular.

## Notas
- O site exibe oito cartões demonstrativos enquanto o Supabase não está configurado. Eles **não são produtos reais** e não têm preços.
- Esta versão é o MVP de vitrine + seleção + WhatsApp. **Ainda não inclui painel administrativo próprio**; a edição ocorre pelo Supabase Table Editor.
- Frete grátis não é calculado automaticamente: a elegibilidade na Grande Florianópolis deve ser confirmada no atendimento.
- Não há integração de pagamento nem cálculo de frete dos Correios.
- O carrinho fica salvo no navegador do visitante.
- Para fotografias, prefira WebP/JPG comprimidos (idealmente menos de 300 KB cada).
- Antes do lançamento, substitua os cartões demonstrativos por dados reais, confira os textos e faça pedidos de teste.
