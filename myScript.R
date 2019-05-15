
mean(cartola$score_mean[cartola$player_position=="tec" & cartola$n_games==3])

cartola[cartola$player_position=="gol" & cartola$n_games==3,]

cartola$player_slug[cartola$player_position=="gol" &
  cartola$score_mean>mean(cartola$score_mean[cartola$player_position=="gol" & cartola$n_games==3])]

atacantes<- cartola[cartola$player_position=="ata" &
                    cartola$n_games == 3 &
                    ((cartola$price_cartoletas-cartola$score_mean)<10) &
          cartola$score_mean>mean(cartola$score_mean[cartola$player_position=="ata" & cartola$n_games==3])
        ,c("player_slug","price_cartoletas","score_mean","n_games")]

goleiros<- goleiros[order(score_mean),]

atacantes$diference<- atacantes$price_cartoletas - atacantes$score_mean
