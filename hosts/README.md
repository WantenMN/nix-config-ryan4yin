# Hosts

1. `darwin`(macOS)
   1. `fern`: MacBook Pro 2022 13-inch M2 16G, mainly for business.
   1. `harmonica`: MacBook Pro 2020 13-inch i5 16G, for personal use.
2. `idols`
   1. `ai`: My main computer, with NixOS + I5-13600KF + RTX 4090 GPU, for gaming & daily use.
   2. `aquamarine`: My NixOS virtual machine as a router(IPv4 only) with a tranparent proxy to bypass the G|F|W.
   4. `ruby`: Another NixOS VM running operation and maintenance related services, such as prometheus, grafana, restic, etc.
   3. `kana`: Yet another NixOS VM running some common applications, such as hompage, file browser, torrent downloader, etc.
3. Homelab:
   1. `tailscale_gw`: A tailscale subnet router(gateway) for accessing my homelab remotely. NixOS VM running on Proxmox.
4. `rolling_girls`: My RISCV64 hosts.
   1. `nozomi`: Lichee Pi 4A, TH1520(4xC910@2.0G), 8GB RAM + 32G eMMC + 64G SD Card.
   2. `yukina`: Lichee Pi 4A(Internal Test Version), TH1520(4xC910@2.0G), 8GB RAM + 8G eMMC + 128G SD Card.
   3. `chiaya`: Milk-V Mars, JH7110(4xU74@1.5 GHz), 4G RAM + No eMMC + 64G SD Card.
5. `12kingdoms`: 
   1. `shoukei`: NixOS on Macbook Pro 2020 Intel i5, 13.3-inch, 16G RAM + 512G SSD.
   1. `suzu`: Orange Pi 5, RK3588s(4xA76 + 4xA55), GPU(4Cores, Mail-G610), NPU(6Tops@int8), 8G RAM + 256G SSD.
6. `kubernetes`: My Kubernetes Cluster

## idols - Oshi no Ko

These four servers are named after the four main characters of the mange/anime Oshi no Ko.

## rolling girls

My All RISCV64 hosts.

![](/_img/nixos-riscv-cluster.webp)


## Distributed Building

I usually run the build command on `Ai` and nix will distribute the build to other NixOS machines, which is convenient and fast.

When building some packages for riscv64 or aarch64, I often have no cache available because of various changes under the hood, so I need to build much more packages than usual, which is one of the reasons why the cluster was originally built, and another reason is distributed building is cool!

![](/_img/nix-distributed-building.webp)

![](/_img/nix-distributed-building-log.webp)


## References

[Oshi no Ko 【推しの子】 - Wikipedia](https://en.wikipedia.org/wiki/Oshi_no_Ko):

![](/_img/idols-famaily.webp)
![](/_img/idols-ai.webp)

[The Rolling Girls【ローリング☆ガールズ】 - Wikipedia](https://en.wikipedia.org/wiki/The_Rolling_Girls):

![](/_img/rolling_girls.webp)

[List of Twelve Kingdoms characters](https://en.wikipedia.org/wiki/List_of_Twelve_Kingdoms_characters)

![](/_img/12kingdoms-1.webp)
![](/_img/12kingdoms-Youko-Rakushun.webp)

[List of Frieren characters](https://en.wikipedia.org/wiki/List_of_Frieren_characters)
