# ThriveWell App

A Flutter-based mobile application focused on mental health awareness and support. It features a smooth user experience with Home, Articles, and Support sections, providing users with educational resources, mental wellness guides, and access to assistance. Designed to be user-friendly and accessible, ThriveWell empowers individuals to prioritize their mental well-being and find the help they need.

## Features  

- **Home Screen** - Provides an overview of services and quick access to essential functionalities.  
- **Article Screen** - Fetches articles from an external API (`https://sjhc-api.onrender.com/articles`) to provide informative healthcare content.  
- **Support Screen** - Users can submit a contact form, which posts data to an API for customer assistance.  
- **State Management** - Uses `Provider` to manage the state in the `ArticleProvider` class.  
- **Bottom Navigation Bar** - Implements `SalomonBottomBar` for smooth navigation between Home, Articles, and Support screens.  

## Tech Stack  

### **Frontend:**  
- **Framework:** Flutter  
- **Language:** Dart  
- **State Management:** Provider  
- **UI Components:** Material UI, SalomonBottomBar, IconSnackBar 

### **Backend (APIs):**  
- **Articles API:** Fetches healthcare-related articles from `https://sjhc-api.onrender.com/articles`  
- **Support API:** Accepts contact form submissions for customer support

