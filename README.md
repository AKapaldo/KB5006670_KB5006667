<div id="top"></div>
<!--
*** Thanks for checking out the Best-README-Template. If you have a suggestion
*** that would make this better, please fork the repo and create a pull request
*** or simply open an issue with the tag "enhancement".
*** Don't forget to give the project a star!
*** Thanks again! Now go create something AMAZING! :D
-->



<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]



<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/AKapaldo/KB5006670_KB5006667">
    <img src="images/printer.png" height="250px" alt="Logo">
  </a>

<h3 align="center">Printer Fix for KB506670 and KB5006667</h3>

  <p align="center">
    This script adds registry entires (or removes them) as a fix for networked printers after installing KB506670 or KB5006667.
    <br />
    <a href="https://github.com/AKapaldo/KB5006670_KB5006667"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/AKapaldo/KB5006670_KB5006667">View Demo</a>
    ·
    <a href="https://github.com/AKapaldo/KB5006670_KB5006667/issues">Report Bug</a>
    ·
    <a href="https://github.com/AKapaldo/KB5006670_KB5006667/issues">Request Feature</a>
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#version-history">Version History</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

[![Print Fix Screen Shot][PrintFix-screenshot]](https://github.com/AKapaldo/KB5006670_KB5006667/blob/main/PrintFix.ps1)

Print Fix repairs issues with printing and connecting to network printers after installing KB5006667 or KB506670. Connecting to printers gives the error 0x0000007c. More info about the issue and the fix can be found <a href="https://www.bleepingcomputer.com/news/microsoft/how-to-fix-the-windows-0x0000007c-network-printing-error/">here at Bleeping Computer</a>

<p align="right">(<a href="#top">back to top</a>)</p>



### Built With

* [PowerShell](https://docs.microsoft.com/en-us/powershell/)



<p align="right">(<a href="#top">back to top</a>)</p>



<!-- GETTING STARTED -->
## Getting Started

The script can be copied using the "Raw" button to be placed in a local file or you can clone the full repo.

### Prerequisites

* Nothing additional needed for Windows machines.

### Installation


1a. Clone the repo
   ```sh
   git clone https://github.com/AKapaldo/KB5006670_KB5006667.git
   ```
1b. Or Copy the code and save locally.
 

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- USAGE EXAMPLES -->
## Usage

Printer Fix
```sh
./PrintFix.ps1
```

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- VERSION -->
## Version History

- v1.0: Initial release
    - v1.1: Cleaned up code, spelling errors, and error catching


See the [open issues](https://github.com/AKapaldo/KB5006670_KB5006667/issues) for a full list of proposed features (and known issues).

<p align="right">(<a href="#top">back to top</a>)</p>




## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- LICENSE -->
## License

Distributed under the GNU General Public License. See `LICENSE` for more information.

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- CONTACT -->
## Contact

Andrew Kapaldo - [@KapaldoA](https://twitter.com/kapaldoa)

Project Link: [https://github.com/AKapaldo/KB5006670_KB5006667](https://github.com/AKapaldo/KB5006670_KB5006667)

<p align="right">(<a href="#top">back to top</a>)</p>



## Acknowledgments

* [Bleeping Computer user: grumpyoldadmin](https://www.bleepingcomputer.com/forums/t/759880/kb5006670-network-printer-problems-again-this-month/page-19)
* [Bleeping Computer user: Filamento](https://www.bleepingcomputer.com/forums/t/759880/kb5006670-network-printer-problems-again-this-month/page-23)


<p align="right">(<a href="#top">back to top</a>)</p>



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/AKapaldo/KB5006670_KB5006667.svg?style=for-the-badge
[contributors-url]: https://github.com/AKapaldo/KB5006670_KB5006667/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/AKapaldo/KB5006670_KB5006667.svg?style=for-the-badge
[forks-url]: https://github.com/AKapaldo/KB5006670_KB5006667/network/members
[stars-shield]: https://img.shields.io/github/stars/AKapaldo/KB5006670_KB5006667.svg?style=for-the-badge
[stars-url]: https://github.com/AKapaldo/KB5006670_KB5006667/stargazers
[issues-shield]: https://img.shields.io/github/issues/AKapaldo/KB5006670_KB5006667.svg?style=for-the-badge
[issues-url]: https://github.com/AKapaldo/KB5006670_KB5006667/issues
[license-shield]: https://img.shields.io/github/license/AKapaldo/KB5006670_KB5006667.svg?style=for-the-badge
[license-url]: https://github.com/AKapaldo/KB5006670_KB5006667/blob/master/LICENSE
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/andrew-kapaldo
[PrintFix-screenshot]: images/PrintFix.png
