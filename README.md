# SJHomeCare App  

A Flutter-based mobile application designed to provide essential home care services. It includes screens for Home, Articles, and Support, offering users a smooth experience for accessing healthcare resources and assistance.  

## Features  

- **Home Screen** - Provides an overview of services and quick access to essential functionalities.  
- **Article Screen** - Fetches articles from an external API (`https://sjhc-api.onrender.com/articles`) to provide informative healthcare content.  
- **Support Screen** - Users can submit a contact form, which posts data to an API for customer assistance.  
- **State Management** - Uses `Provider` for managing state in the `ArticleProvider` class.  
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

### Web Version  
You can access the web version of the app here: [SJHomeCare Web](https://sjhomecare.netlify.app/)  
