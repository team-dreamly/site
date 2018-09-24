#/bin/bash
hugo
aws s3 cp public/ s3://dreamly.se --recursive --exclude ".DS_Store"
aws cloudfront create-invalidation --distribution-id "E2G14QU1D3D89U" --paths "/*"
env HUGO_DEFAULTCONTENTLANGUAGE="jp" hugo
aws s3 cp public/ s3://dreamly.jp --recursive --exclude ".DS_Store"
aws cloudfront create-invalidation --distribution-id "E3K8NWK6TRRG81" --paths "/*"
