# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aldubar <aldubar@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/07/01 16:08:41 by aldubar           #+#    #+#              #
#    Updated: 2021/07/02 13:08:12 by aldubar          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM		ubuntu:latest

RUN		apt update && apt install -y clang make git

WORKDIR		/.github/checker

RUN		cd .. && git clone https://github.com/busshi/libft_checker.git

ENTRYPOINT	[ "bash"] ["../libft_checker.sh" ]
