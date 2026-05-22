# Port-Dickson-Beach-Cleanup

A beautiful, single-page website for the **Responsible Tourist Pledge** campaign tied to the Port Dickson Beach Cleanup event on 11 July 2026. 

This project is organized by Taylor's University as part of the Tourism Integrated Project, supporting:
- **SDG 14:** Life Below Water
- **SDG 13:** Climate Action

## Features
- **Live Pledge Counter:** Polls a Supabase table and updates dynamically.
- **Pledge Form:** Validation with inline error messages and check-agreement before submitting.
- **Admin Dashboard:** Hidden from the public page and available directly at `/admin`, with total metrics, search capability, and CSV export.
- **Integrated QR Code:** Automatically generates a QR code linking to the live URL.
- **Ocean & Coastal Design:** Multi-layered animated waves, floating foam particles, and responsive layout.

## Technologies Used
- HTML5 / CSS3 / Vanilla JavaScript
- Supabase REST API
- QRCode.js (via CDN)
- Playfair Display & Inter Fonts (Google Fonts)

## Supabase Setup
1. Run `supabase/migrations/20260522000000_create_pledges.sql` in your Supabase project.
2. In `index.html`, replace:
   - `SUPABASE_URL`
   - `SUPABASE_ANON_KEY`
3. Deploy the static site. The public page has no admin button; the dashboard is available at `/admin`.

The included Row Level Security policies allow anonymous inserts and reads because this is a static browser-only site. The client-side admin password hides the dashboard route from casual users, but it is not a real security boundary for private data.
