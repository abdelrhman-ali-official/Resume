$content = Get-Content -Path ".\index.html" -Raw
$newContent = $content -replace '(?s)(<div class="slide-left">.*?class="text-lg leading-relaxed mb-8 animate-luxury-delay2">.*?users\.</p>).*?class="text-lg leading-relaxed mb-8 animate-luxury-delay2">.*?users\.</p>(\s*<div class="flex space-x-6">)', '$1$2'
Set-Content -Path ".\index.html" -Value $newContent
