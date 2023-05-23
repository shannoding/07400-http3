# Transport-Level Performance of HTTP/3 and QUIC

Independent study on performance of HTTP3/QUIC vs. HTTP2/TCP Internet protocols for 07-400 Research Practicum in Computer Science.

This project aims to take a practical look at the design choices of HTTP/3 + QUIC, which is a new set of transport protocols for the internet

Paper: [/paper.pdf](https://github.com/shannoding/07400/blob/main/paper.pdf)

Figures: [/figures.pdf](https://github.com/shannoding/07400/blob/main/figures.pdf)

Short conclusions are

- HTTP/3 is significantly faster than HTTP/2. According to Figure 1, HTTP/3 completed the tests in 20.6% of the time it took HTTP/2 on average.
- HTTP3 frames arrive much faster and closer together than HTTP2. The HTTP/3 tests used significantly more frames but within a significantly small time range indicating little waiting.
- HTTP3 keeps continuous requests more continuous. Following requests reach the max data transfer rate much faster.
