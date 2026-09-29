# TH_DU_CORTE033 — sistema completo

Inclui agendamento, PostgreSQL, Pix automático Mercado Pago, Webhook e área do barbeiro.

1. Crie um PostgreSQL e execute `schema.sql`.
2. Copie `.env.example` para `.env` e preencha as variáveis.
3. `npm install`
4. `npm start`
5. Publique em um servidor Node com HTTPS.
6. No Mercado Pago, configure Webhooks para `https://SEU-DOMINIO.com/api/webhooks/mercadopago` e o evento de pagamentos.
7. Coloque a chave secreta dos Webhooks em `MP_WEBHOOK_SECRET`.
8. Use primeiro credenciais de teste; depois produção.

NUNCA coloque Access Token no frontend ou envie-o pelo chat.
A página pública é `/` e a Área do Barbeiro é `/admin.html`.
