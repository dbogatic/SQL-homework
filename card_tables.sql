SELECT transaction.date, credit_card.id_card_holder, card_holder.name, credit_card.card, transaction.amount, merchant.name, merchant_category.name

FROM card_holder
LEFT JOIN credit_card
ON credit_card.id_card_holder = card_holder.id

LEFT JOIN transaction
ON transaction.card = credit_card.card

LEFT JOIN merchant 
ON merchant.id = transaction.id_merchant

LEFT JOIN merchant_category
ON merchant_category.id = merchant.id_merchant_category