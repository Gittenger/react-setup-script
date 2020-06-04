ReactSetup () { 
	npm i customize-cra react-app-rewired styled-components babel-plugin-styled-components
	touch config-overrides.js
	cat ~/code--assets/files-for-scripts/config-overrides.js >> config-overrides.js
	
	cd src
	mkdir components
	mkdir style-utils
	cd style-utils
	touch global.styles.js theme.js utils.styles.jsx ghost.scss 
	
	## CREATE STYLE UTILS
	cat ~/code--assets/files-for-scripts/style-utils/utils.styles.jsx >> utils.styles.jsx
	
	## CREATE GLOBAL STYLES
	cat ~/code--assets/files-for-scripts/style-utils/global.styles.js >> global.styles.js
	
	## CREATE THEME
	cat ~/code--assets/files-for-scripts/style-utils/theme.js >> theme.js
	
	cd ../
	
	## ADD THEME PROVIDER
	rm index.js
	touch index.js

	cat ~/code--assets/files-for-scripts/react-index.js >> index.js
	cd ../
	
	## ADD VSCODE CUSTOM SETTINGS
	cp -R ~/code--assets/files-for-scripts/.vscode--react ./.vscode
}
