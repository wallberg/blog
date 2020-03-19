---
layout: post
title: Updated blog links with relative paths
tags: jekyll ipfs
---

I've updated this blog to create all URL paths as relative.  Jekyll provides a mechanism called *relative_url* to create links which are relative to the current host (ie, without the hostname) but they still build links with absolute paths (ie, beginning with '/').  My modifications make all the paths relative as well.

The reason to do this is so the site will work not only at the canonical base URL at [bwallberg.neocitied.org](https://bwallberg.neocities.org), but also when served using one of the many IPFS resolution services.  For example, see the first blog update I made after the update to relative paths using the gateway at [ipfs.io](https://ipfs.io/ipfs/bafybeiekzvumh7gddjtyhufhajnwqwtlgfzr4wrikobjsuitgii46e767u/).

Thank you to [Rico Sta. Cruz](https://ricostacruz.com/til/relative-paths-in-jekyll) for the code which I have tweaked, see [_includes/base.html](https://github.com/wallberg/blog/blob/master/_includes/base.html)

---

*Update 2020-03-19*: I didn't realize that Neocities has already provided support for [IPFS DNS](https://blog.neocities.org/blog/2017/08/07/ipfs-dns-support.html) so you can find the latest version of this blog at [/ipns/bwallberg.neocities.org/](https://ipfs.io/ipns/bwallberg.neocities.org/). You can see the latest CID with `dig TXT bwallberg.neocities.org`.