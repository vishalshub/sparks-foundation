
CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Prabhakar', 'prabhakar@gmail.com', 50000),
(2, 'Praganesh', 'praganesh@gmail.com', 60000),
(3, 'Pragya', 'pragya@gmail.com', 40000),
(4, 'Antony Vishal', 'antony@gmail.com', 50000),
(5, 'Anand', 'anand@gmail.com', 40000),
(6, 'Vasanth', 'vasanth@gmail.com', 70000),
(7, 'Gokulnath', 'gokulnath@gmail.com', 50000),
(8, 'Delwin', 'delwin@gmail.com', 40000),
(9, 'Vijay', 'vijay@gmail.com', 30000),
(10, 'Dhanoosh', 'dhanoosh@gmail.com', 50000);


ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);


ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT;

ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
COMMIT;

