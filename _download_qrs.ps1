$ErrorActionPreference = 'Stop'
$dest = 'C:\docker\n8n-stack\drawings'

$items = @(
  @{ name = 'rf5022.png'; url = 'https://v5.airtableusercontent.com/v3/u/53/53/1778176800000/vz04QfL6RwKvLLx423f2fQ/wZNJVeEncggvP1RtlWzQVF3hlDm2pwcDjcHSR0GZB7YELACCgNw9TYYq_5lAqPNmShTqmekSArj9tWSfJKbbvJPpZbTYfpEqlkO2lybktp_MvpJm8g1ty-NdrRZO9pg_3kD_8uOwOZPKsf6QDJHWeFu04ctqIOeKJqvhd7RRj-w/nptLf93D7usHfp9r0JT2OqdQ7l8vfbAVVmdhjSSWcAA' },
  @{ name = 'rf1022.png'; url = 'https://v5.airtableusercontent.com/v3/u/53/53/1778176800000/giMCIfww53f6b34SXjogAQ/IQTebXY0LMS9m1-OxgapD29_iJPvfY6C3HtI5qL36aKbyncI041G_amR0LIfTF5zCxwb1gSwSam_ZF8Z14tRL17As1x0qxv5vZKYD_WHmU4mbLbTU5PGwUv1qpiuLFRKhA35RalI8yE7Sipxj9Zf2zjqKlgELPkeJOSpVgYPCb0/B0hscL5xv1hj7VXPcVsvVTQt_2B95C3F8Zs5NY_osHI' },
  @{ name = 'rf14022.png'; url = 'https://v5.airtableusercontent.com/v3/u/53/53/1778176800000/GvlAdKYpYQ7PSp6zmYkW8A/0x5gMZZ90qfBg1Ci8cgQNIJKHDj91GhdYuSlrUfi1Y2ecfQCUovnuMrijhAeXAS1XnUnBhBbEHV9Mj6aZyzA-0iHEiKyYtgXmpTlDKchIwFAIVWoxgL3BzJ0_c5Fc9wHJmJSre5n-uyja9BSLVHG2msJ-4GJ85odzfC6FP9aqpQ/iIBXCicM1TkfBWoiHfDHjwIm9rZOfSDDTHPb7ZIXEMY' },
  @{ name = 'RF10B.png'; url = 'https://v5.airtableusercontent.com/v3/u/53/53/1778176800000/eQ5EOnSM_ekW9dZA2GO51g/zoQMUYT9B3Egu0jUO0stz0AXpLOFaFpDDd46vMZJppVvHbIIq7Mnq1iiswH1luN8CCbbG8WA-p_wCXUF3bf0oigj57bOz5rP7FS5l5OCUycqS3b9UGwUJtSTnd9NYxAKUUSmo0BG7KX77Mh_p89gCdA526JIEe0atOvYA9RePkc/FylngOF-EOdC3aIrWfxy2RthXW9yTDA7SGXoPe9tCz4' },
  @{ name = 'ewc10022.png'; url = 'https://v5.airtableusercontent.com/v3/u/53/53/1778176800000/g8-P3nFoMJfuiOPOlWtWQQ/_0g7wCQ_GKsOQmNVKXph-AkiIFTqic7i7KxUZLc2LzfVxVl9r017EgTh3Rooo_bSS3OuVx0CFbugI0VDaX6nLlxlt2UD3SfvP2KkrVNzJkFwfddr41kb7GiCGJreXlN9cTbgRXa8v0gnRgx_nI2TU_7bgNxnGubuSnjNYelhGl4/ip_S8g5A1yaBu8KIaWQ9saxJOIEpnSmkGQLjM930Td0' },
  @{ name = 'WETEST.png'; url = 'https://v5.airtableusercontent.com/v3/u/53/53/1778176800000/IQbXVmg0cdYkjDCvs3YGdw/rD6dpreKyemjFlYvpA3L2fvA1Xuxh_6lC5AYkzj5n612RqBSWXh1FJ1stBvUVamtKYOt5H563Ou5ygyvVZw4H19kUTZYq7p4C6aaKtYXxINrcRIkiDZinrzg8NNRMenTYsEwMTzVEEPD48wkQReBcaqKwLF4JUo2QpqQfUg7d5w/nDQW0JtuskGgeGXyEGfGu3S8PxKzbA-JuG1Y4b3OiQs' },
  @{ name = 'ewc6022.png'; url = 'https://v5.airtableusercontent.com/v3/u/53/53/1778176800000/qnY8cT064nVisxymWNXnFQ/jRFWlC4JuCKibOEUtjMDSQsgYQRPszUxxFfnlxsu4iMAHv0mLNym3GUInJcfmPtkjDdLcbG25YdoBlzP5vtFu3Yd-iITKbmCkgGpMU4U1Gt8cy6gmIaFUchoA0kDWw-p_JkktDdAbbQfRCMCG5Oy9mIIg6x3QVSnplK8WZz7HMo/D80osvkM5mO0126k8JhbkTW0AV5GJ8yJ97VjZW-RLfE' },
  @{ name = 'mb25022.png'; url = 'https://v5.airtableusercontent.com/v3/u/53/53/1778176800000/gwWvbJG1rnsw45kwmA1-nQ/i-6gSr1gByDUdrc7dPe6tmb7I2CmQfjxBHY-HOCTylWmob7hCtroHTD0fHwNViY_dcokGWsv5mKCcgQy3YUTuwQYmUpp1bTS4DF_c-26CSUWzCpXULOo4zpI9gp0GH4BEnfIuFf-4iIrD9uISVTW9N3AwVd9w5QbhYsB3mDYZ5Q/Q0lHlZPkGeOlW6vMV4YABt6ZC1LyLjZNYZAp2ZQlYfA' },
  @{ name = '6_PDFsam_SBN022 PDF REL1&2 revised 1.png'; url = 'https://v5.airtableusercontent.com/v3/u/53/53/1778176800000/0yu_fdhHdO9a4Qz8SgsRhw/Hymgq_7vCUJKZjmfWKOtikzpaQDrEX-AGffyOf7AHXo6QTmYS-NBaiIYIkmgOn13fFVVQhVJZO-pzndQTVEwlLqmQ6Q7BWCeMIMPqTIAv-2yb21pDvrjEjtCtKrxauEQcwYBdOy_otIEpOxa0wFK1LmT87aORSKC0nrc2LI5vWsR8J-0yJ783Tq-ayx8bMVU20u5UN5KYLEcqNOwHdOmZw/JAf53Htv6nbonWtGMxL3Pc6eSEW1LpXeXv3n3UveYag' },
  @{ name = 'ewc4022.png'; url = 'https://v5.airtableusercontent.com/v3/u/53/53/1778176800000/JLg5jTOiZGGjJ5uHdagZyA/2k1C8lS-O1jlmMJEMeZxyaUb0Efq3sBAf-60l92TZjgsbNgLSxNH6giapEzwL-4rJMkhSHSQ1ZyQ3mixNMFnc6p3H24wzdem7Ms3ZHDi6GCu2O6tev3HF22yXOhIslI3Q-K_2SKMa767NNCevdXtkReS1VtlDXnErWONxMIwV4w/RrW8kkXWA6jtooHK0HGgobBTlaZ0bM6fnpp1RAAdKPg' },
  @{ name = 'RF8022.png'; url = 'https://v5.airtableusercontent.com/v3/u/53/53/1778176800000/wQ9NPtTJY7X2FDbdMWdSkA/590JEj7RMDqaX5G57hHyq3qRbjYwHGdsJ12sBxFToFsdhukMrnaXwYar9pyy3mDVooePuS310n4yjSzqdJc6QaoQ_l39sovNiHg9g4tviMQFPyv6JxcUwHLAz_B5v5Ed4zN-J69PGZm3PJqgrS876Si1x-uoYwnGtdois5WNcno/7gaQ0_PNy74nCSGUuINIA0HTebprkKqRxyiKol6v5Hw' },
  @{ name = 'ewc9022.png'; url = 'https://v5.airtableusercontent.com/v3/u/53/53/1778176800000/j4J6BN3G6mz6wHgYkZrM-A/O7uLoBAwpiRIcEdbqTm1sOoX9vva_NAZ_VQD5RWFRyG_zMv30Nhv4D8E6a9vcQpd5V_4Dqpt0z9vN60ys1NKguymZJkr3WdpQf8Y5TLWjpKuK0l0j3sjheF8c_3ijnN-sLlauu2yRo2batuU-A8_Ttqz-cNFljMVsWXa0RaNnTc/1irjaCxlDMoJyAvaoSOionxZ2_3QKUqC-JlTBVyI3og' },
  @{ name = 'mb18025.png'; url = 'https://v5.airtableusercontent.com/v3/u/53/53/1778176800000/KR5wusBaaQ_gto1QPK49EA/Ce2oti0SOZZb5a1cAtsaWjcOcM1Yj9xkk0AqcoWo4kvMW1t5lCnfPm0GmnD74B4zzhAjoLxlLJNWiLs2WL7dm0xPXc1fgIIkC9D9OOZUbZjpnx8ds99gS4kDfk9Ra42Fo-aqpqvyE_yCPzxWTnZeJAFNS4-4HC3N_EoFK7nuiC0/QcDUKuqtygyhSg8ENNs0l3xrriYKqOPVQIlcRVlABPs' }
)

$ok = 0; $fail = 0
foreach ($i in $items) {
  $out = Join-Path $dest $i.name
  try {
    Invoke-WebRequest -Uri $i.url -OutFile $out -UseBasicParsing
    Write-Host "OK   $($i.name)"
    $ok++
  } catch {
    Write-Host "FAIL $($i.name) :: $($_.Exception.Message)"
    $fail++
  }
}
Write-Host ""
Write-Host "Done. Saved: $ok  Failed: $fail"
