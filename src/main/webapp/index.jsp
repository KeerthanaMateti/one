<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>NexusShop | Premium Online Shopping</title>

    https://fonts.googleapis.com
    https://fonts.gstatic.com

    <link
        href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Playfair+Display:wght@700&display=swap"
        rel="stylesheet"
    >

    <link
        rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
    >

    <style>

        /* =========================================================
           ROOT
        ========================================================= */

        :root {
            --primary: #111827;
            --primary-light: #1f2937;

            --accent: #ff6b4a;
            --accent-dark: #e74f30;
            --accent-light: #fff0eb;

            --green: #059669;
            --green-light: #ecfdf5;

            --yellow: #f59e0b;

            --background: #f8fafc;
            --white: #ffffff;

            --text: #111827;
            --muted: #6b7280;
            --light-muted: #9ca3af;

            --border: #e5e7eb;
            --surface: #f3f4f6;

            --radius: 16px;
            --small-radius: 10px;

            --shadow:
                0 4px 20px rgba(0, 0, 0, 0.05);

            --shadow-hover:
                0 14px 40px rgba(0, 0, 0, 0.10);

            --transition: 0.25s ease;

            --container: 1250px;
        }


        /* =========================================================
           RESET
        ========================================================= */

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: "Inter", sans-serif;
            background: var(--background);
            color: var(--text);
            line-height: 1.5;
        }

        body.cart-open {
            overflow: hidden;
        }

        img {
            display: block;
            width: 100%;
        }

        a {
            text-decoration: none;
            color: inherit;
        }

        button,
        input,
        select {
            font-family: inherit;
        }

        button {
            cursor: pointer;
            border: 0;
        }

        .container {
            width: 100%;
            max-width: var(--container);
            margin: auto;
            padding: 0 24px;
        }


        /* =========================================================
           TOP BAR
        ========================================================= */

        .top-bar {
            background: var(--primary);
            color: white;
            text-align: center;
            font-size: 13px;
            padding: 8px 15px;
        }

        .top-bar span {
            color: #fdba74;
            font-weight: 700;
        }


        /* =========================================================
           HEADER
        ========================================================= */

        header {
            position: sticky;
            top: 0;
            z-index: 1000;

            background: rgba(255,255,255,0.96);

            backdrop-filter: blur(15px);

            border-bottom: 1px solid var(--border);
        }

        .header-container {
            min-height: 72px;

            display: flex;
            align-items: center;
            justify-content: space-between;

            gap: 20px;
        }


        /* BRAND */

        .brand {
            display: flex;
            align-items: center;
            gap: 10px;

            font-weight: 800;
            font-size: 22px;

            white-space: nowrap;
        }

        .brand-logo {
            width: 42px;
            height: 42px;

            border-radius: 12px;

            display: grid;
            place-items: center;

            color: white;

            background:
                linear-gradient(135deg, var(--accent), #ff967e);
        }

        .brand .accent {
            color: var(--accent);
        }


        /* NAV */

        .nav-menu {
            display: flex;
            list-style: none;
            align-items: center;

            gap: 5px;
        }

        .nav-menu a {
            display: block;

            padding: 10px 14px;

            font-size: 14px;
            font-weight: 500;

            color: var(--muted);

            border-radius: 9px;

            transition: var(--transition);
        }

        .nav-menu a:hover {
            color: var(--primary);
            background: var(--surface);
        }


        /* HEADER ACTIONS */

        .header-actions {
            display: flex;
            align-items: center;

            gap: 5px;
        }

        .icon-button {
            position: relative;

            width: 42px;
            height: 42px;

            display: grid;
            place-items: center;

            border-radius: 50%;

            background: transparent;

            font-size: 17px;

            color: var(--muted);

            transition: var(--transition);
        }

        .icon-button:hover {
            background: var(--surface);
            color: var(--primary);
        }

        .counter {
            position: absolute;

            top: -2px;
            right: -2px;

            width: 19px;
            height: 19px;

            display: grid;
            place-items: center;

            border-radius: 50%;

            background: var(--accent);

            color: white;

            font-size: 10px;
            font-weight: 700;

            border: 2px solid white;
        }

        .mobile-button {
            display: none;
        }


        /* =========================================================
           MOBILE MENU
        ========================================================= */

        .mobile-menu {
            background: white;

            display: none;

            padding: 12px 24px 20px;

            border-top: 1px solid var(--border);
        }

        .mobile-menu.active {
            display: block;
        }

        .mobile-menu a {
            padding: 13px;

            display: flex;
            align-items: center;

            gap: 12px;

            border-radius: 8px;
        }

        .mobile-menu a:hover {
            background: var(--surface);
        }


        /* =========================================================
           HERO
        ========================================================= */

        .hero {
            margin: 22px;

            min-height: 500px;

            position: relative;

            display: flex;
            align-items: center;

            border-radius: 24px;

            overflow: hidden;

            color: white;

            background:
                linear-gradient(
                    90deg,
                    rgba(17,24,39,0.96),
                    rgba(17,24,39,0.73),
                    rgba(17,24,39,0.20)
                ),
                url("https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1800&q=85");

            background-size: cover;
            background-position: center;
        }

        .hero-content {
            max-width: 650px;
        }

        .hero-badge {
            display: inline-block;

            padding: 7px 15px;

            margin-bottom: 18px;

            border-radius: 50px;

            background: rgba(255,107,74,0.2);

            color: #ffad9b;

            font-size: 13px;
            font-weight: 700;
        }

        .hero h1 {
            font-family: "Playfair Display", serif;

            font-size: clamp(38px, 6vw, 65px);

            line-height: 1.05;

            margin-bottom: 18px;
        }

        .hero p {
            max-width: 560px;

            color: rgba(255,255,255,0.8);

            font-size: 17px;

            margin-bottom: 28px;
        }

        .hero-actions {
            display: flex;
            gap: 12px;

            flex-wrap: wrap;
        }


        /* =========================================================
           BUTTONS
        ========================================================= */

        .btn {
            padding: 13px 25px;

            border-radius: 999px;

            display: inline-flex;
            align-items: center;
            justify-content: center;

            gap: 8px;

            font-weight: 600;

            transition: var(--transition);
        }

        .btn-primary {
            background: var(--accent);
            color: white;
        }

        .btn-primary:hover {
            background: var(--accent-dark);

            transform: translateY(-2px);
        }

        .btn-light {
            color: white;

            border: 1px solid rgba(255,255,255,0.35);

            background: rgba(255,255,255,0.13);

            backdrop-filter: blur(10px);
        }

        .btn-light:hover {
            background: rgba(255,255,255,0.22);
        }


        /* =========================================================
           TRUST FEATURES
        ========================================================= */

        .features {
            padding: 25px 0;
        }

        .feature-grid {
            display: grid;

            grid-template-columns: repeat(4,1fr);

            background: white;

            border-radius: var(--radius);

            box-shadow: var(--shadow);
        }

        .feature {
            padding: 22px;

            display: flex;
            align-items: center;

            gap: 14px;

            border-right: 1px solid var(--border);
        }

        .feature:last-child {
            border-right: 0;
        }

        .feature-icon {
            width: 45px;
            height: 45px;

            border-radius: 50%;

            display: grid;
            place-items: center;

            flex-shrink: 0;

            background: var(--accent-light);
            color: var(--accent);
        }

        .feature strong {
            display: block;

            font-size: 14px;
        }

        .feature span {
            color: var(--muted);

            font-size: 12px;
        }


        /* =========================================================
           SECTION
        ========================================================= */

        .section {
            padding: 48px 0;
        }

        .section-header {
            display: flex;

            align-items: flex-end;
            justify-content: space-between;

            gap: 20px;

            margin-bottom: 26px;
        }

        .section-title h2 {
            font-size: 28px;

            margin-bottom: 4px;
        }

        .section-title p {
            color: var(--muted);

            font-size: 14px;
        }


        /* =========================================================
           CATEGORIES
        ========================================================= */

        .category-grid {
            display: grid;

            grid-template-columns: repeat(6,1fr);

            gap: 15px;
        }

        .category-card {
            padding: 24px 15px;

            background: white;

            border-radius: var(--radius);

            box-shadow: var(--shadow);

            text-align: center;

            cursor: pointer;

            border: 2px solid transparent;

            transition: var(--transition);
        }

        .category-card:hover,
        .category-card.active {
            border-color: var(--accent);

            transform: translateY(-5px);

            box-shadow: var(--shadow-hover);
        }

        .category-icon {
            width: 58px;
            height: 58px;

            margin: auto auto 12px;

            border-radius: 50%;

            background: var(--accent-light);

            color: var(--accent);

            display: grid;
            place-items: center;

            font-size: 22px;
        }

        .category-card h3 {
            font-size: 14px;

            margin-bottom: 3px;
        }

        .category-card span {
            color: var(--muted);

            font-size: 12px;
        }


        /* =========================================================
           SEARCH + FILTER
        ========================================================= */

        .filter-bar {
            display: flex;

            justify-content: space-between;
            align-items: center;

            gap: 15px;

            margin-bottom: 24px;

            padding: 14px;

            border-radius: 14px;

            background: white;

            box-shadow: var(--shadow);
        }

        .search-box {
            flex: 1;

            max-width: 500px;

            display: flex;
            align-items: center;

            gap: 10px;

            padding: 0 15px;

            background: var(--surface);

            border-radius: 10px;
        }

        .search-box i {
            color: var(--muted);
        }

        .search-box input {
            flex: 1;

            padding: 12px 0;

            outline: none;

            border: 0;

            background: transparent;
        }

        .sort-select {
            padding: 11px 14px;

            border: 1px solid var(--border);

            border-radius: 10px;

            background: white;

            outline: none;

            color: var(--text);
        }


        /* =========================================================
           PRODUCTS
        ========================================================= */

        .product-grid {
            display: grid;

            grid-template-columns: repeat(4,1fr);

            gap: 20px;
        }

        .product-card {
            position: relative;

            overflow: hidden;

            background: white;

            border-radius: var(--radius);

            box-shadow: var(--shadow);

            transition: var(--transition);
        }

        .product-card:hover {
            transform: translateY(-6px);

            box-shadow: var(--shadow-hover);
        }

        .product-image {
            aspect-ratio: 1;

            position: relative;

            overflow: hidden;

            background: var(--surface);
        }

        .product-image img {
            height: 100%;

            object-fit: cover;

            transition: 0.35s ease;
        }

        .product-card:hover img {
            transform: scale(1.05);
        }

        .product-badge {
            position: absolute;

            top: 12px;
            left: 12px;

            padding: 5px 10px;

            border-radius: 50px;

            color: white;

            background: var(--accent);

            font-size: 11px;
            font-weight: 700;
        }

        .product-badge.sale {
            background: var(--green);
        }

        .wishlist-button {
            position: absolute;

            top: 12px;
            right: 12px;

            width: 38px;
            height: 38px;

            display: grid;
            place-items: center;

            border-radius: 50%;

            background: rgba(255,255,255,0.94);

            color: var(--muted);

            font-size: 16px;
        }

        .wishlist-button.active {
            color: var(--accent);
        }

        .product-info {
            padding: 17px;
        }

        .product-category {
            color: var(--muted);

            font-size: 11px;

            text-transform: uppercase;

            font-weight: 700;
        }

        .product-info h3 {
            font-size: 15px;

            margin: 5px 0 9px;
        }

        .rating {
            color: var(--yellow);

            font-size: 12px;

            margin-bottom: 9px;
        }

        .rating small {
            color: var(--muted);
        }

        .price-row {
            display: flex;

            align-items: center;

            gap: 8px;

            margin-bottom: 15px;
        }

        .price {
            font-size: 19px;

            font-weight: 800;
        }

        .old-price {
            color: var(--light-muted);

            text-decoration: line-through;

            font-size: 13px;
        }

        .add-cart-button {
            width: 100%;

            padding: 11px;

            border-radius: 9px;

            font-weight: 600;

            background: var(--primary);

            color: white;

            transition: var(--transition);
        }

        .add-cart-button:hover {
            background: var(--accent);
        }


        /* =========================================================
           EMPTY
        ========================================================= */

        .empty-products {
            grid-column: 1 / -1;

            padding: 60px 20px;

            background: white;

            border-radius: var(--radius);

            text-align: center;
        }

        .empty-products i {
            font-size: 45px;

            color: var(--light-muted);

            margin-bottom: 14px;
        }

        .empty-products p {
            color: var(--muted);

            margin-top: 5px;
        }


        /* =========================================================
           DEAL
        ========================================================= */

        .deal {
            display: grid;

            grid-template-columns: 1fr 1fr;

            overflow: hidden;

            background: var(--primary);

            border-radius: 22px;

            color: white;
        }

        .deal-image {
            min-height: 420px;
        }

        .deal-image img {
            height: 100%;

            object-fit: cover;
        }

        .deal-content {
            padding: 50px;

            display: flex;
            flex-direction: column;

            justify-content: center;
        }

        .deal-tag {
            align-self: flex-start;

            padding: 6px 12px;

            margin-bottom: 12px;

            border-radius: 50px;

            background: var(--accent);

            font-size: 12px;

            font-weight: 700;
        }

        .deal-content h2 {
            font-size: 34px;

            margin-bottom: 8px;
        }

        .deal-content p {
            color: #d1d5db;
        }

        .deal-price {
            font-size: 34px;

            font-weight: 800;

            margin: 15px 0;
        }

        .deal-price span {
            color: #9ca3af;

    
