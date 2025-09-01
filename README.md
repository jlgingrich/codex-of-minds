# Codex of Minds (<https://codexofminds.com>)

## Hugo

[Hugo](https://gohugo.io/documentation/) is a speedy static-site generator with sensible defaults, good documentation, and a great theme repository.

## Terminal Theme

The futuristic Hugo theme we're currently using.

- [README](https://github.com/panr/hugo-theme-terminal?tab=readme-ov-file)
- [Theme demo site](https://panr.github.io/hugo-theme-terminal-demo/) ([Source](https://github.com/panr/hugo-theme-terminal-demo/))
- [Color theme generator](https://panr.github.io/terminal-css/)

## Decap CMS

[Decap CMS](https://decapcms.org/docs/intro/) is a static-site content management system that operates by modifying the underlying GitHub repository via a dashboard embedded on the site. Authentication is handled via a GitHub OAuth .

### OAuth2 Proxy for GitHub

The tutorials on Decap CMS mostly assume you're using Netlify Identity for authentication to the dashboard. In order to use Decap CMS without a Netlify account, we host an instance of [sterlingwes/decap-proxy](https://github.com/sterlingwes/decap-proxy) on a Cloudflare Worker to facilitate the GitHub OAuth flow. This is super low traffic since it only serves requests when a creator signs into the CMS page.

In order to get the required secrets for the worker, you need to first [create a GitHub OAuth app](https://github.com/sterlingwes/decap-proxy#create-a-github-oauth-app).

```bash
# Deploy worker
cd decap-proxy
npx wrangler login
npx wrangler deploy

# Add worker GitHub secrets
npx wrangler secret put GITHUB_OAUTH_ID
npx wrangler secret put GITHUB_OAUTH_SECRET
```
